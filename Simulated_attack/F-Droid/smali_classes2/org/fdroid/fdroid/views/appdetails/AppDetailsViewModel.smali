.class public final Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "AppDetailsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001fJ\u0010\u0010,\u001a\u00020-2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0016\u0010.\u001a\u00020-2\u0006\u0010\u001c\u001a\u00020\u001dH\u0082@\u00a2\u0006\u0002\u0010/J\u0008\u00100\u001a\u00020-H\u0014J\u0010\u00101\u001a\u00020-2\u0006\u00102\u001a\u00020\u001fH\u0002J\u0010\u00103\u001a\u00020-2\u0006\u00102\u001a\u00020\u001fH\u0007J\u0010\u00104\u001a\u00020-2\u0006\u00102\u001a\u00020\u001fH\u0007J\u0006\u00105\u001a\u00020)J\u0008\u00106\u001a\u00020-H\u0002R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0018\u0010\u0012\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \u0017*\u0004\u0018\u00010\u00160\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010 R\u0016\u0010!\u001a\n \u0017*\u0004\u0018\u00010\"0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u000fR\u001c\u0010\'\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_app",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lorg/fdroid/database/App;",
        "_appData",
        "Lorg/fdroid/fdroid/views/appdetails/AppData;",
        "_versions",
        "",
        "Lorg/fdroid/database/AppVersion;",
        "Landroidx/lifecycle/LiveData;",
        "getApp",
        "()Landroidx/lifecycle/LiveData;",
        "appData",
        "getAppData",
        "appLiveData",
        "appPrefsLiveData",
        "Lorg/fdroid/database/AppPrefs;",
        "db",
        "Lorg/fdroid/database/FDroidDatabase;",
        "kotlin.jvm.PlatformType",
        "onAppChanged",
        "Landroidx/lifecycle/Observer;",
        "onAppPrefsChanged",
        "onVersionsChanged",
        "packageName",
        "",
        "preferredRepoId",
        "",
        "Ljava/lang/Long;",
        "repoManager",
        "Lorg/fdroid/index/RepoManager;",
        "repos",
        "Lorg/fdroid/database/Repository;",
        "versions",
        "getVersions",
        "versionsLiveData",
        "ignoreAllUpdates",
        "Lkotlinx/coroutines/Job;",
        "ignoreVersionCodeUpdate",
        "versionCode",
        "loadApp",
        "",
        "loadRepos",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCleared",
        "resetVersionsLiveData",
        "repoId",
        "selectRepo",
        "setPreferredRepo",
        "toggleBetaReleaseChannel",
        "tryToPublishAppData",
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
.field private final _app:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final _appData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final _versions:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final app:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final appData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private appLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private appPrefsLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final db:Lorg/fdroid/database/FDroidDatabase;

.field private final onAppChanged:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer;"
        }
    .end annotation
.end field

.field private final onAppPrefsChanged:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer;"
        }
    .end annotation
.end field

.field private final onVersionsChanged:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private preferredRepoId:Ljava/lang/Long;

.field private final repoManager:Lorg/fdroid/index/RepoManager;

.field private repos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation
.end field

.field private final versions:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private versionsLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4kxvQawdrLH1q3SQm1NH3Rwpu2U(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lorg/fdroid/database/App;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppChanged$lambda$2(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lorg/fdroid/database/App;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hT9sNvQIcMV9uoBK8U5nzxomOzk(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lorg/fdroid/database/AppPrefs;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppPrefsChanged$lambda$3(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpT1jVAl2TlV7NnMIk6gQEJlt3o(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onVersionsChanged$lambda$4(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_app:Landroidx/lifecycle/MutableLiveData;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->app:Landroidx/lifecycle/LiveData;

    .line 36
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_versions:Landroidx/lifecycle/MutableLiveData;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->versions:Landroidx/lifecycle/LiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_appData:Landroidx/lifecycle/MutableLiveData;

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appData:Landroidx/lifecycle/LiveData;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 96
    new-instance p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppChanged:Landroidx/lifecycle/Observer;

    .line 106
    new-instance p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppPrefsChanged:Landroidx/lifecycle/Observer;

    .line 111
    new-instance p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onVersionsChanged:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static final synthetic access$getAppPrefsLiveData$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appPrefsLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static final synthetic access$getDb$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)Lorg/fdroid/database/FDroidDatabase;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->db:Lorg/fdroid/database/FDroidDatabase;

    return-object p0
.end method

.method public static final synthetic access$getPackageName$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRepoManager$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)Lorg/fdroid/index/RepoManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    return-object p0
.end method

.method public static final synthetic access$get_app$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_app:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$loadRepos(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->loadRepos(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setRepos$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/util/List;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->repos:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$tryToPublishAppData(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->tryToPublishAppData()V

    return-void
.end method

.method private final loadRepos(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadRepos$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadRepos$2;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final onAppChanged$lambda$2(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lorg/fdroid/database/App;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_app:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getRepoId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->preferredRepoId:Ljava/lang/Long;

    .line 100
    invoke-virtual {p1}, Lorg/fdroid/database/App;->getRepoId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->resetVersionsLiveData(J)V

    .line 101
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->tryToPublishAppData()V

    .line 103
    :cond_0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_app:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onAppPrefsChanged$lambda$3(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lorg/fdroid/database/AppPrefs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lorg/fdroid/database/AppPrefs;->getPreferredRepoId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/fdroid/database/AppPrefs;->getPreferredRepoId()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->preferredRepoId:Ljava/lang/Long;

    .line 108
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->tryToPublishAppData()V

    return-void
.end method

.method private static final onVersionsChanged$lambda$4(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_versions:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final resetVersionsLiveData(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->versionsLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onVersionsChanged:Landroidx/lifecycle/Observer;

    .line 133
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 134
    invoke-interface {v1}, Lorg/fdroid/database/FDroidDatabase;->getVersionDao()Lorg/fdroid/database/VersionDao;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lorg/fdroid/database/VersionDao;->getAppVersions(JLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onVersionsChanged:Landroidx/lifecycle/Observer;

    .line 135
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->versionsLiveData:Landroidx/lifecycle/LiveData;

    return-void

    .line 133
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "packageName not initialized"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final tryToPublishAppData()V
    .locals 5

    .line 123
    new-instance v0, Lorg/fdroid/fdroid/views/appdetails/AppData;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appPrefsLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/AppPrefs;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->preferredRepoId:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->repos:Ljava/util/List;

    if-nez v4, :cond_1

    .line 126
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 123
    :cond_1
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fdroid/fdroid/views/appdetails/AppData;-><init>(Lorg/fdroid/database/AppPrefs;JLjava/util/List;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->_appData:Landroidx/lifecycle/MutableLiveData;

    .line 128
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getApp()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->app:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getAppData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getVersions()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->versions:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final ignoreAllUpdates()Lkotlinx/coroutines/Job;
    .locals 6

    .line 141
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreVersionCodeUpdate(J)Lkotlinx/coroutines/Job;
    .locals 6

    .line 147
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreVersionCodeUpdate$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreVersionCodeUpdate$1;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;JLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final loadApp(Ljava/lang/String;)V
    .locals 8

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->packageName:Ljava/lang/String;

    .line 52
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 53
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$1;->INSTANCE:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$1;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppChanged:Landroidx/lifecycle/Observer;

    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 61
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fdroid/database/AppDao;->getApp(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppChanged:Landroidx/lifecycle/Observer;

    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appLiveData:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 65
    invoke-virtual {v0}, Lorg/fdroid/index/RepoManager;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 69
    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fdroid/database/AppPrefsDao;->getAppPrefs(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppPrefsChanged:Landroidx/lifecycle/Observer;

    .line 70
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appPrefsLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method protected onCleared()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppChanged:Landroidx/lifecycle/Observer;

    .line 75
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appPrefsLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppPrefsChanged:Landroidx/lifecycle/Observer;

    .line 76
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->versionsLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onVersionsChanged:Landroidx/lifecycle/Observer;

    .line 77
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public final selectRepo(J)V
    .locals 8

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->appLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->onAppChanged:Landroidx/lifecycle/Observer;

    .line 82
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 83
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$selectRepo$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$selectRepo$1;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;JLkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 87
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->tryToPublishAppData()V

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->resetVersionsLiveData(J)V

    return-void
.end method

.method public final setPreferredRepo(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->repoManager:Lorg/fdroid/index/RepoManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0, v1, p1, p2}, Lorg/fdroid/index/RepoManager;->setPreferredRepoId(Ljava/lang/String;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toggleBetaReleaseChannel()Lkotlinx/coroutines/Job;
    .locals 6

    .line 153
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$toggleBetaReleaseChannel$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$toggleBetaReleaseChannel$1;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method
