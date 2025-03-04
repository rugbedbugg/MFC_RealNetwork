.class public final Lorg/fdroid/fdroid/RepoUpdateManager;
.super Ljava/lang/Object;
.source "RepoUpdateManager.kt"

# interfaces
.implements Lorg/fdroid/index/IndexUpdateListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B5\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ \u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020\u001eH\u0016J \u0010-\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/H\u0016J&\u00101\u001a\u00020(2\u001c\u00102\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020*\u0012\u0008\u0012\u000605j\u0002`60403H\u0002J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u001eH\u0007J\u0008\u0010:\u001a\u00020(H\u0007R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0018R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001bR\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001bR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lorg/fdroid/fdroid/RepoUpdateManager;",
        "Lorg/fdroid/index/IndexUpdateListener;",
        "context",
        "Landroid/content/Context;",
        "db",
        "Lorg/fdroid/database/FDroidDatabase;",
        "repoManager",
        "Lorg/fdroid/index/RepoManager;",
        "notificationManager",
        "Lorg/fdroid/fdroid/NotificationManager;",
        "forceIndexV1",
        "",
        "(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;Z)V",
        "_isUpdating",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityCheckerImpl;",
        "fdroidPrefs",
        "Lorg/fdroid/fdroid/Preferences;",
        "kotlin.jvm.PlatformType",
        "indexV1Updater",
        "Lorg/fdroid/index/v1/IndexV1Updater;",
        "isUpdating",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "isUpdatingLiveData",
        "Landroidx/lifecycle/LiveData;",
        "()Landroidx/lifecycle/LiveData;",
        "nextUpdateFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getNextUpdateFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "nextUpdateLiveData",
        "getNextUpdateLiveData",
        "repoUpdater",
        "Lorg/fdroid/index/RepoUpdater;",
        "uriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "onDownloadProgress",
        "",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "bytesRead",
        "totalBytes",
        "onUpdateProgress",
        "appsProcessed",
        "",
        "totalApps",
        "showRepoErrors",
        "repoErrors",
        "",
        "Lkotlin/Pair;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "updateRepo",
        "Lorg/fdroid/index/IndexUpdateResult;",
        "repoId",
        "updateRepos",
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
.field private final _isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field private final compatibilityChecker:Lorg/fdroid/CompatibilityCheckerImpl;

.field private final context:Landroid/content/Context;

.field private final db:Lorg/fdroid/database/FDroidDatabase;

.field private final fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

.field private final indexV1Updater:Lorg/fdroid/index/v1/IndexV1Updater;

.field private final isUpdating:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation
.end field

.field private final isUpdatingLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final nextUpdateFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field private final nextUpdateLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final notificationManager:Lorg/fdroid/fdroid/NotificationManager;

.field private final repoManager:Lorg/fdroid/index/RepoManager;

.field private final repoUpdater:Lorg/fdroid/index/RepoUpdater;

.field private final uriBuilder:Lorg/fdroid/index/RepoUriBuilder;


# direct methods
.method public static synthetic $r8$lambda$K8k6laC9tAuWDFIkzR7qI5woFgw(Lorg/fdroid/fdroid/RepoUpdateManager;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/RepoUpdateManager;->indexV1Updater$lambda$2(Lorg/fdroid/fdroid/RepoUpdateManager;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rBaigBdI5TxxNknN7mq0vN_i7sk(Lorg/fdroid/fdroid/RepoUpdateManager;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/RepoUpdateManager;->showRepoErrors$lambda$4(Lorg/fdroid/fdroid/RepoUpdateManager;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEPSwSmLqbwD8CZBkHERiyK-2CU(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/RepoUpdateManager;->uriBuilder$lambda$1(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V
    .locals 9

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lorg/fdroid/fdroid/RepoUpdateManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;)V
    .locals 9

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lorg/fdroid/fdroid/RepoUpdateManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;)V
    .locals 9

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lorg/fdroid/fdroid/RepoUpdateManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;Z)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->db:Lorg/fdroid/database/FDroidDatabase;

    iput-object p3, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->repoManager:Lorg/fdroid/index/RepoManager;

    iput-object p4, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->_isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 40
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    iput-object p3, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdating:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    iput-object p3, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdatingLiveData:Landroidx/lifecycle/LiveData;

    .line 47
    sget-object p3, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->Companion:Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

    invoke-virtual {p3, p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;->getAutoUpdateWorkInfo(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    .line 106
    new-instance v0, Lorg/fdroid/fdroid/RepoUpdateManager$special$$inlined$map$1;

    invoke-direct {v0, p3}, Lorg/fdroid/fdroid/RepoUpdateManager$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->nextUpdateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 50
    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    iput-object p3, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->nextUpdateLiveData:Landroidx/lifecycle/LiveData;

    .line 52
    new-instance p3, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object p3, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->uriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    .line 56
    new-instance p4, Lorg/fdroid/CompatibilityCheckerImpl;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v0, "getPackageManager(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->forceTouchApps()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p4

    .line 56
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/CompatibilityCheckerImpl;-><init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->compatibilityChecker:Lorg/fdroid/CompatibilityCheckerImpl;

    .line 60
    new-instance v7, Lorg/fdroid/index/RepoUpdater;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v0, "getCacheDir(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v2

    const-string p1, "getDb(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p1, Lorg/fdroid/fdroid/net/DownloaderFactory;->INSTANCE:Lorg/fdroid/fdroid/net/DownloaderFactory;

    const-string v8, "INSTANCE"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    .line 60
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/RepoUpdater;-><init>(Ljava/io/File;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V

    iput-object v7, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->repoUpdater:Lorg/fdroid/index/RepoUpdater;

    if-eqz p5, :cond_0

    .line 68
    new-instance p5, Lorg/fdroid/index/v1/IndexV1Updater;

    .line 70
    new-instance v2, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/RepoUpdateManager;)V

    .line 71
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p5

    move-object v1, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    .line 68
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/v1/IndexV1Updater;-><init>(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iput-object p5, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->indexV1Updater:Lorg/fdroid/index/v1/IndexV1Updater;

    .line 76
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 34
    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object p3

    const-string p7, "getRepoManager(...)"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 35
    new-instance p4, Lorg/fdroid/fdroid/NotificationManager;

    invoke-direct {p4, p1}, Lorg/fdroid/fdroid/NotificationManager;-><init>(Landroid/content/Context;)V

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 36
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fdroid/fdroid/Preferences;->isForceOldIndexEnabled()Z

    move-result p5

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 31
    invoke-direct/range {v0 .. v5}, Lorg/fdroid/fdroid/RepoUpdateManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;Lorg/fdroid/fdroid/NotificationManager;Z)V

    return-void
.end method

.method private static final indexV1Updater$lambda$2(Lorg/fdroid/fdroid/RepoUpdateManager;)Ljava/io/File;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "dl-"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    const-string v0, "createTempFile(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final showRepoErrors(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair;",
            ">;)V"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/database/Repository;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    .line 145
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 147
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v4

    const-string v5, "getLocales(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/fdroid/database/Repository;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v2, ": "

    if-nez v3, :cond_2

    .line 149
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/fdroid/fdroid/RepoUpdateManager$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/RepoUpdateManager;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final showRepoErrors$lambda$4(Lorg/fdroid/fdroid/RepoUpdateManager;Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msgBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final uriBuilder$lambda$1(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "repository"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathElements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getRepoAddress(Lorg/fdroid/database/Repository;)Ljava/lang/String;

    move-result-object p0

    .line 54
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/fdroid/fdroid/Utils;->getUri(Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "getUri(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getNextUpdateFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->nextUpdateFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getNextUpdateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->nextUpdateLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isUpdating()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdating:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isUpdatingLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdatingLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public onDownloadProgress(Lorg/fdroid/database/Repository;JJ)V
    .locals 7

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lorg/fdroid/fdroid/RepoUpdateManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    .line 162
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isUpdateNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .line 165
    invoke-static {p2, p3, p4, p5}, Lorg/fdroid/fdroid/Utils;->getPercent(JJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 169
    :goto_0
    invoke-static {p2, p3}, Lorg/fdroid/fdroid/Utils;->getFriendlySize(J)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, -0x1

    cmp-long p3, p4, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    sget p4, Lorg/fdroid/fdroid/R$string;->status_download_unknown_size:I

    new-array p5, v3, [Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, v2

    aput-object p2, p5, v1

    invoke-virtual {p3, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    move-object v2, p1

    goto :goto_2

    .line 173
    :cond_2
    invoke-static {p4, p5}, Lorg/fdroid/fdroid/Utils;->getFriendlySize(J)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    sget p5, Lorg/fdroid/fdroid/R$string;->status_download:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    aput-object p3, v4, v3

    const/4 p1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {p4, p5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    const/4 v3, 0x0

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/fdroid/fdroid/NotificationManager;->showUpdateRepoNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public onUpdateProgress(Lorg/fdroid/database/Repository;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "repo"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lorg/fdroid/fdroid/RepoUpdateManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Committing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    .line 189
    invoke-virtual {v3}, Lorg/fdroid/fdroid/Preferences;->isUpdateNotificationEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "getString(...)"

    if-lez v2, :cond_1

    iget-object v5, v0, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    iget-object v6, v0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    sget v7, Lorg/fdroid/fdroid/R$string;->status_inserting_x_apps:I

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 194
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 195
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 196
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    .line 192
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    int-to-long v7, v1

    int-to-long v1, v2

    .line 198
    invoke-static {v7, v8, v1, v2}, Lorg/fdroid/fdroid/Utils;->getPercent(JJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v5

    move-object v5, v6

    move v6, v3

    .line 191
    invoke-static/range {v4 .. v9}, Lorg/fdroid/fdroid/NotificationManager;->showUpdateRepoNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v10, v0, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    iget-object v1, v0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    sget v2, Lorg/fdroid/fdroid/R$string;->status_inserting_apps:I

    .line 200
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    .line 199
    invoke-static/range {v10 .. v15}, Lorg/fdroid/fdroid/NotificationManager;->showUpdateRepoNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final updateRepo(J)Lorg/fdroid/index/IndexUpdateResult;
    .locals 10

    iget-object v0, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 125
    invoke-virtual {v0, p1, p2}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/fdroid/index/IndexUpdateResult$NotFound;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$NotFound;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->_isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :try_start_0
    iget-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    .line 129
    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->isUpdateNotificationEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    sget v0, Lorg/fdroid/fdroid/R$string;->status_connecting_to_repo:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "getString(...)"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 131
    invoke-static/range {v4 .. v9}, Lorg/fdroid/fdroid/NotificationManager;->showUpdateRepoNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->indexV1Updater:Lorg/fdroid/index/v1/IndexV1Updater;

    if-eqz p2, :cond_2

    .line 135
    invoke-virtual {p2, p1}, Lorg/fdroid/index/IndexUpdater;->update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->repoUpdater:Lorg/fdroid/index/RepoUpdater;

    invoke-virtual {p2, p1}, Lorg/fdroid/index/RepoUpdater;->update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object p1, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    .line 137
    invoke-virtual {p1}, Lorg/fdroid/fdroid/NotificationManager;->cancelUpdateRepoNotification()V

    iget-object p1, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->_isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-object p2

    :goto_1
    iget-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    .line 137
    invoke-virtual {p2}, Lorg/fdroid/fdroid/NotificationManager;->cancelUpdateRepoNotification()V

    iget-object p2, p0, Lorg/fdroid/fdroid/RepoUpdateManager;->_isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw p1
.end method

.method public final updateRepos()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->_isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 83
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->db:Lorg/fdroid/database/FDroidDatabase;

    .line 89
    invoke-interface {v2}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object v2

    invoke-interface {v2}, Lorg/fdroid/database/RepositoryDao;->getRepositories()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fdroid/database/Repository;

    .line 90
    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    .line 93
    invoke-virtual {v7}, Lorg/fdroid/fdroid/Preferences;->isUpdateNotificationEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    sget v8, Lorg/fdroid/fdroid/R$string;->status_connecting_to_repo:I

    new-array v9, v6, [Ljava/lang/Object;

    .line 94
    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "getString(...)"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 95
    invoke-static/range {v11 .. v16}, Lorg/fdroid/fdroid/NotificationManager;->showUpdateRepoNotification$default(Lorg/fdroid/fdroid/NotificationManager;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_1
    iget-object v7, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->indexV1Updater:Lorg/fdroid/index/v1/IndexV1Updater;

    if-eqz v7, :cond_2

    .line 99
    invoke-virtual {v7, v5}, Lorg/fdroid/index/IndexUpdater;->update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    iget-object v7, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->repoUpdater:Lorg/fdroid/index/RepoUpdater;

    invoke-virtual {v7, v5}, Lorg/fdroid/index/RepoUpdater;->update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object v7

    .line 101
    :cond_3
    instance-of v8, v7, Lorg/fdroid/index/IndexUpdateResult$Processed;

    if-eqz v8, :cond_4

    move v4, v6

    goto :goto_0

    .line 102
    :cond_4
    instance-of v6, v7, Lorg/fdroid/index/IndexUpdateResult$Error;

    if-eqz v6, :cond_0

    .line 103
    invoke-static {}, Lorg/fdroid/fdroid/RepoUpdateManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating repository "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Lorg/fdroid/index/IndexUpdateResult$Error;

    invoke-virtual {v9}, Lorg/fdroid/index/IndexUpdateResult$Error;->getE()Ljava/lang/Exception;

    move-result-object v9

    invoke-static {v6, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    new-instance v6, Lkotlin/Pair;

    check-cast v7, Lorg/fdroid/index/IndexUpdateResult$Error;

    invoke-virtual {v7}, Lorg/fdroid/index/IndexUpdateResult$Error;->getE()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v2, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lorg/fdroid/fdroid/Preferences;->setLastUpdateCheck(J)V

    .line 108
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_6

    invoke-direct {v1, v0}, Lorg/fdroid/fdroid/RepoUpdateManager;->showRepoErrors(Ljava/util/List;)V

    :cond_6
    if-eqz v4, :cond_8

    iget-object v0, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->context:Landroid/content/Context;

    .line 110
    invoke-static {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    iget-object v2, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    .line 111
    invoke-virtual {v2}, Lorg/fdroid/fdroid/Preferences;->isAutoDownloadEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->fdroidPrefs:Lorg/fdroid/fdroid/Preferences;

    invoke-virtual {v2}, Lorg/fdroid/fdroid/Preferences;->isBackgroundDownloadAllowed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    invoke-virtual {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdatesAndInstall()V

    goto :goto_2

    .line 114
    :cond_7
    invoke-virtual {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_2
    iget-object v0, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    .line 118
    invoke-virtual {v0}, Lorg/fdroid/fdroid/NotificationManager;->cancelUpdateRepoNotification()V

    iget-object v0, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->_isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :goto_3
    iget-object v2, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->notificationManager:Lorg/fdroid/fdroid/NotificationManager;

    .line 118
    invoke-virtual {v2}, Lorg/fdroid/fdroid/NotificationManager;->cancelUpdateRepoNotification()V

    iget-object v2, v1, Lorg/fdroid/fdroid/RepoUpdateManager;->_isUpdating:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v0
.end method
