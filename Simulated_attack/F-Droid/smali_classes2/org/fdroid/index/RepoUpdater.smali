.class public final Lorg/fdroid/index/RepoUpdater;
.super Ljava/lang/Object;
.source "RepoUpdater.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J$\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00170\u001bH\u0002R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/fdroid/index/RepoUpdater;",
        "",
        "tempDir",
        "Ljava/io/File;",
        "db",
        "Lorg/fdroid/database/FDroidDatabase;",
        "downloaderFactory",
        "Lorg/fdroid/download/DownloaderFactory;",
        "repoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityChecker;",
        "listener",
        "Lorg/fdroid/index/IndexUpdateListener;",
        "(Ljava/io/File;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V",
        "indexUpdater",
        "",
        "Lorg/fdroid/index/IndexUpdater;",
        "log",
        "Lmu/KLogger;",
        "tempFileProvider",
        "Lorg/fdroid/index/TempFileProvider;",
        "update",
        "Lorg/fdroid/index/IndexUpdateResult;",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "doUpdate",
        "Lkotlin/Function1;",
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
.field private final indexUpdater:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/index/IndexUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lmu/KLogger;

.field private final tempFileProvider:Lorg/fdroid/index/TempFileProvider;


# direct methods
.method public static synthetic $r8$lambda$gVwlg7SDQ88CI2S1ch7wGhuANKg(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/index/RepoUpdater;->tempFileProvider$lambda$0(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V
    .locals 9

    const-string v0, "tempDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoUriBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatibilityChecker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v1, Lorg/fdroid/index/RepoUpdater$log$1;->INSTANCE:Lorg/fdroid/index/RepoUpdater$log$1;

    invoke-virtual {v0, v1}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/index/RepoUpdater;->log:Lmu/KLogger;

    .line 26
    new-instance v0, Lorg/fdroid/index/RepoUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/fdroid/index/RepoUpdater$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/fdroid/index/RepoUpdater;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    const/4 p1, 0x2

    new-array p1, p1, [Lorg/fdroid/index/IndexUpdater;

    .line 34
    new-instance v8, Lorg/fdroid/index/v2/IndexV2Updater;

    move-object v1, v8

    move-object v2, p2

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/index/v2/IndexV2Updater;-><init>(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V

    const/4 v1, 0x0

    aput-object v8, p1, v1

    .line 42
    new-instance v8, Lorg/fdroid/index/v1/IndexV1Updater;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/index/v1/IndexV1Updater;-><init>(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V

    const/4 p2, 0x1

    aput-object v8, p1, p2

    .line 33
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/index/RepoUpdater;->indexUpdater:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    .line 21
    invoke-static {}, Lorg/fdroid/index/IndexUpdaterKt;->getDefaultRepoUriBuilder()Lorg/fdroid/index/RepoUriBuilder;

    move-result-object p4

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 17
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/RepoUpdater;-><init>(Ljava/io/File;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V

    return-void
.end method

.method private static final tempFileProvider$lambda$0(Ljava/io/File;)Ljava/io/File;
    .locals 2

    const-string v0, "$tempDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dl-"

    const-string v1, ""

    .line 27
    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    const-string v0, "createTempFile(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final update(Lorg/fdroid/database/Repository;Lkotlin/jvm/functions/Function1;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/Repository;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lorg/fdroid/index/IndexUpdateResult;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/index/RepoUpdater;->indexUpdater:Ljava/util/List;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/IndexUpdater;

    .line 65
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v1}, Lorg/fdroid/index/IndexUpdater;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_1

    .line 67
    invoke-virtual {v1}, Lorg/fdroid/index/IndexUpdater;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/index/RepoUpdater;->log:Lmu/KLogger;

    .line 68
    new-instance v3, Lorg/fdroid/index/RepoUpdater$update$2$1;

    invoke-direct {v3, v1, p1}, Lorg/fdroid/index/RepoUpdater$update$2$1;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;)V

    invoke-interface {v2, v3}, Lmu/KLogger;->warn(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/IndexUpdateResult;

    .line 72
    sget-object v2, Lorg/fdroid/index/IndexUpdateResult$NotFound;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$NotFound;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 74
    :cond_2
    new-instance p2, Lorg/fdroid/index/IndexUpdateResult$Error;

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/fdroid/index/IndexUpdateResult$Error;-><init>(Ljava/lang/Exception;)V

    return-object p2
.end method


# virtual methods
.method public final update(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/fdroid/index/RepoUpdater$update$1;

    invoke-direct {v0, p1}, Lorg/fdroid/index/RepoUpdater$update$1;-><init>(Lorg/fdroid/database/Repository;)V

    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/RepoUpdater;->update(Lorg/fdroid/database/Repository;Lkotlin/jvm/functions/Function1;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p1

    return-object p1
.end method
