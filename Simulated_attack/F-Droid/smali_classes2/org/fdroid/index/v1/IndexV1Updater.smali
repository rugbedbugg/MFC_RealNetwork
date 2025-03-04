.class public final Lorg/fdroid/index/v1/IndexV1Updater;
.super Lorg/fdroid/index/IndexUpdater;
.source "IndexV1Updater.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/fdroid/index/v1/IndexV1Updater;",
        "Lorg/fdroid/index/IndexUpdater;",
        "database",
        "Lorg/fdroid/database/FDroidDatabase;",
        "tempFileProvider",
        "Lorg/fdroid/index/TempFileProvider;",
        "downloaderFactory",
        "Lorg/fdroid/download/DownloaderFactory;",
        "repoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityChecker;",
        "listener",
        "Lorg/fdroid/index/IndexUpdateListener;",
        "(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V",
        "db",
        "Lorg/fdroid/database/FDroidDatabaseInt;",
        "formatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "getFormatVersion",
        "()Lorg/fdroid/index/IndexFormatVersion;",
        "log",
        "Lmu/KLogger;",
        "updateRepo",
        "Lorg/fdroid/index/IndexUpdateResult;",
        "repo",
        "Lorg/fdroid/database/Repository;",
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
.field private final compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

.field private final db:Lorg/fdroid/database/FDroidDatabaseInt;

.field private final downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

.field private final formatVersion:Lorg/fdroid/index/IndexFormatVersion;

.field private final listener:Lorg/fdroid/index/IndexUpdateListener;

.field private final log:Lmu/KLogger;

.field private final repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

.field private final tempFileProvider:Lorg/fdroid/index/TempFileProvider;


# direct methods
.method public static synthetic $r8$lambda$UP-MUK_gwTNuPMXCw_1jUeTDGWQ(Lorg/fdroid/index/v1/IndexV1Verifier;Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/index/v1/IndexV1Updater;->updateRepo$lambda$1(Lorg/fdroid/index/v1/IndexV1Verifier;Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempFileProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoUriBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatibilityChecker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lorg/fdroid/index/IndexUpdater;-><init>()V

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1Updater;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    iput-object p3, p0, Lorg/fdroid/index/v1/IndexV1Updater;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iput-object p4, p0, Lorg/fdroid/index/v1/IndexV1Updater;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    iput-object p5, p0, Lorg/fdroid/index/v1/IndexV1Updater;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    iput-object p6, p0, Lorg/fdroid/index/v1/IndexV1Updater;->listener:Lorg/fdroid/index/IndexUpdateListener;

    .line 34
    sget-object p2, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object p3, Lorg/fdroid/index/v1/IndexV1Updater$log$1;->INSTANCE:Lorg/fdroid/index/v1/IndexV1Updater$log$1;

    invoke-virtual {p2, p3}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1Updater;->log:Lmu/KLogger;

    .line 35
    sget-object p2, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    iput-object p2, p0, Lorg/fdroid/index/v1/IndexV1Updater;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    .line 36
    check-cast p1, Lorg/fdroid/database/FDroidDatabaseInt;

    iput-object p1, p0, Lorg/fdroid/index/v1/IndexV1Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 29
    invoke-static {}, Lorg/fdroid/index/IndexUpdaterKt;->getDefaultRepoUriBuilder()Lorg/fdroid/index/RepoUriBuilder;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 25
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/v1/IndexV1Updater;-><init>(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V

    return-void
.end method

.method public static final synthetic access$getCompatibilityChecker$p(Lorg/fdroid/index/v1/IndexV1Updater;)Lorg/fdroid/CompatibilityChecker;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/fdroid/index/v1/IndexV1Updater;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    return-object p0
.end method

.method public static final synthetic access$getDb$p(Lorg/fdroid/index/v1/IndexV1Updater;)Lorg/fdroid/database/FDroidDatabaseInt;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/fdroid/index/v1/IndexV1Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lorg/fdroid/index/v1/IndexV1Updater;)Lorg/fdroid/index/IndexUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/fdroid/index/v1/IndexV1Updater;->listener:Lorg/fdroid/index/IndexUpdateListener;

    return-object p0
.end method

.method private static final updateRepo$lambda$1(Lorg/fdroid/index/v1/IndexV1Verifier;Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const-string v3, "$verifier"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$repo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v3, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;

    invoke-direct {v3, p1, v2}, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$2$1;-><init>(Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;)V

    invoke-virtual {p0, v3}, Lorg/fdroid/index/JarIndexVerifier;->getStreamAndVerify(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    .line 69
    iget-object v0, v1, Lorg/fdroid/index/v1/IndexV1Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v0

    .line 70
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/database/Repository;->getPreferences$database_release()Lorg/fdroid/database/RepositoryPreferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1e7

    const/4 v13, 0x0

    move-object/from16 v7, p3

    .line 70
    invoke-static/range {v1 .. v13}, Lorg/fdroid/database/RepositoryPreferences;->copy$default(Lorg/fdroid/database/RepositoryPreferences;JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/RepositoryPreferences;

    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->updateRepositoryPreferences(Lorg/fdroid/database/RepositoryPreferences;)V

    return-void
.end method


# virtual methods
.method public getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1Updater;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    return-object v0
.end method

.method protected updateRepo(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 5

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v0

    sget-object v1, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1Updater;->log:Lmu/KLogger;

    .line 43
    new-instance v1, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$1;

    invoke-direct {v1, p1}, Lorg/fdroid/index/v1/IndexV1Updater$updateRepo$1;-><init>(Lorg/fdroid/database/Repository;)V

    invoke-interface {v0, v1}, Lmu/KLogger;->error(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/index/v1/IndexV1Updater;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    .line 45
    invoke-interface {v0}, Lorg/fdroid/index/TempFileProvider;->createTempFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1Updater;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1Updater;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    const-string v3, "index-v1.jar"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-interface {v2, p1, v3}, Lorg/fdroid/index/RepoUriBuilder;->getUri(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 49
    sget-object v3, Lorg/fdroid/index/v2/FileV2;->Companion:Lorg/fdroid/index/v2/FileV2$Companion;

    const-string v4, "/index-v1.jar"

    invoke-virtual {v3, v4}, Lorg/fdroid/index/v2/FileV2$Companion;->fromPath(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v3

    .line 46
    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/fdroid/download/DownloaderFactory;->createWithTryFirstMirror(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getLastETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/fdroid/download/Downloader;->setCacheTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fdroid/index/v1/IndexV1Updater;->listener:Lorg/fdroid/index/IndexUpdateListener;

    .line 53
    invoke-static {v1, v2, p1}, Lorg/fdroid/index/IndexUpdaterKt;->setIndexUpdateListener(Lorg/fdroid/download/Downloader;Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;)V

    .line 56
    :try_start_0
    invoke-virtual {v1}, Lorg/fdroid/download/Downloader;->download()V

    .line 57
    invoke-virtual {v1}, Lorg/fdroid/download/Downloader;->hasChanged()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lorg/fdroid/index/IndexUpdateResult$Unchanged;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$Unchanged;
    :try_end_0
    .catch Lorg/fdroid/index/v1/OldIndexException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/fdroid/download/Downloader;->getCacheTag()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Lorg/fdroid/index/v1/IndexV1Verifier;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lorg/fdroid/index/v1/IndexV1Verifier;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fdroid/index/v1/IndexV1Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 61
    new-instance v4, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p0, p1, v1}, Lorg/fdroid/index/v1/IndexV1Updater$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/index/v1/IndexV1Verifier;Lorg/fdroid/index/v1/IndexV1Updater;Lorg/fdroid/database/Repository;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/fdroid/index/v1/OldIndexException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 82
    sget-object p1, Lorg/fdroid/index/IndexUpdateResult$Processed;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$Processed;

    return-object p1

    .line 77
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/fdroid/index/v1/OldIndexException;->isSameTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lorg/fdroid/index/IndexUpdateResult$Unchanged;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$Unchanged;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p1

    .line 78
    :cond_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1
.end method
