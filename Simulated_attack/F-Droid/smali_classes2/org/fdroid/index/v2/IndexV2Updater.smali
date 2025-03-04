.class public final Lorg/fdroid/index/v2/IndexV2Updater;
.super Lorg/fdroid/index/IndexUpdater;
.source "IndexV2Updater.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ$\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0017H\u0002J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001aH\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lorg/fdroid/index/v2/IndexV2Updater;",
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
        "getCertAndEntry",
        "Lkotlin/Pair;",
        "",
        "Lorg/fdroid/index/v2/Entry;",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "certificate",
        "processStream",
        "Lorg/fdroid/index/IndexUpdateResult;",
        "entryFile",
        "Lorg/fdroid/index/v2/EntryFileV2;",
        "repoVersion",
        "",
        "streamProcessor",
        "Lorg/fdroid/index/v2/IndexV2StreamProcessor;",
        "updateRepo",
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

.field private final repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

.field private final tempFileProvider:Lorg/fdroid/index/TempFileProvider;


# direct methods
.method public static synthetic $r8$lambda$IdLiZARyHbAQE3ip037IBmUvlmM(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/IndexV2StreamProcessor;JLjava/io/FileInputStream;Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/index/v2/EntryFileV2;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/fdroid/index/v2/IndexV2Updater;->processStream$lambda$3$lambda$2(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/IndexV2StreamProcessor;JLjava/io/FileInputStream;Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/index/v2/EntryFileV2;)V

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

    iput-object p2, p0, Lorg/fdroid/index/v2/IndexV2Updater;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    iput-object p3, p0, Lorg/fdroid/index/v2/IndexV2Updater;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iput-object p4, p0, Lorg/fdroid/index/v2/IndexV2Updater;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    iput-object p5, p0, Lorg/fdroid/index/v2/IndexV2Updater;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    iput-object p6, p0, Lorg/fdroid/index/v2/IndexV2Updater;->listener:Lorg/fdroid/index/IndexUpdateListener;

    .line 34
    sget-object p2, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    iput-object p2, p0, Lorg/fdroid/index/v2/IndexV2Updater;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    .line 35
    check-cast p1, Lorg/fdroid/database/FDroidDatabaseInt;

    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

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
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/v2/IndexV2Updater;-><init>(Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lorg/fdroid/index/v2/IndexV2Updater;)Lorg/fdroid/index/IndexUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/fdroid/index/v2/IndexV2Updater;->listener:Lorg/fdroid/index/IndexUpdateListener;

    return-object p0
.end method

.method private final getCertAndEntry(Lorg/fdroid/database/Repository;Ljava/lang/String;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/Repository;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/index/v2/IndexV2Updater;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    .line 57
    invoke-interface {v0}, Lorg/fdroid/index/TempFileProvider;->createTempFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/index/v2/IndexV2Updater;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v2, p0, Lorg/fdroid/index/v2/IndexV2Updater;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    const-string v3, "entry.jar"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-interface {v2, p1, v3}, Lorg/fdroid/index/RepoUriBuilder;->getUri(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 61
    sget-object v3, Lorg/fdroid/index/v2/FileV2;->Companion:Lorg/fdroid/index/v2/FileV2$Companion;

    const-string v4, "/entry.jar"

    invoke-virtual {v3, v4}, Lorg/fdroid/index/v2/FileV2$Companion;->fromPath(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v3

    .line 58
    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/fdroid/download/DownloaderFactory;->createWithTryFirstMirror(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/index/v2/IndexV2Updater;->listener:Lorg/fdroid/index/IndexUpdateListener;

    .line 64
    invoke-static {v1, v2, p1}, Lorg/fdroid/index/IndexUpdaterKt;->setIndexUpdateListener(Lorg/fdroid/download/Downloader;Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;)V

    .line 67
    :try_start_0
    invoke-virtual {v1}, Lorg/fdroid/download/Downloader;->download()V

    .line 68
    new-instance p1, Lorg/fdroid/index/v2/EntryVerifier;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lorg/fdroid/index/v2/EntryVerifier;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/fdroid/index/v2/IndexV2Updater$getCertAndEntry$1;->INSTANCE:Lorg/fdroid/index/v2/IndexV2Updater$getCertAndEntry$1;

    .line 69
    invoke-virtual {p1, p2}, Lorg/fdroid/index/JarIndexVerifier;->getStreamAndVerify(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method private final processStream(Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/EntryFileV2;JLorg/fdroid/index/v2/IndexV2StreamProcessor;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 15

    move-object v10, p0

    move-object/from16 v0, p1

    iget-object v1, v10, Lorg/fdroid/index/v2/IndexV2Updater;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    .line 83
    invoke-interface {v1}, Lorg/fdroid/index/TempFileProvider;->createTempFile()Ljava/io/File;

    move-result-object v11

    iget-object v1, v10, Lorg/fdroid/index/v2/IndexV2Updater;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v2, v10, Lorg/fdroid/index/v2/IndexV2Updater;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    .line 86
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/index/v2/EntryFileV2;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [C

    const/4 v5, 0x0

    const/16 v6, 0x2f

    aput-char v6, v4, v5

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/fdroid/index/RepoUriBuilder;->getUri(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v9, p2

    .line 84
    invoke-virtual {v1, v0, v2, v9, v11}, Lorg/fdroid/download/DownloaderFactory;->createWithTryFirstMirror(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object v1

    iget-object v2, v10, Lorg/fdroid/index/v2/IndexV2Updater;->listener:Lorg/fdroid/index/IndexUpdateListener;

    .line 90
    invoke-static {v1, v2, v0}, Lorg/fdroid/index/IndexUpdaterKt;->setIndexUpdateListener(Lorg/fdroid/download/Downloader;Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;)V

    .line 93
    :try_start_0
    invoke-virtual {v1}, Lorg/fdroid/download/Downloader;->download()V

    new-instance v12, Ljava/io/FileInputStream;

    .line 94
    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v10, Lorg/fdroid/index/v2/IndexV2Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 95
    invoke-virtual {v1}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v2

    iget-object v13, v10, Lorg/fdroid/index/v2/IndexV2Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 96
    new-instance v14, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    move-object v7, v12

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/IndexV2StreamProcessor;JLjava/io/FileInputStream;Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/index/v2/EntryFileV2;)V

    invoke-virtual {v13, v14}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 114
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 94
    :try_start_2
    invoke-static {v12, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 118
    sget-object v0, Lorg/fdroid/index/IndexUpdateResult$Processed;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$Processed;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 94
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :goto_0
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method private static final processStream$lambda$3$lambda$2(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/IndexV2StreamProcessor;JLjava/io/FileInputStream;Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/index/v2/EntryFileV2;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const-string v6, "$repoDao"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$repo"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$streamProcessor"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$inputStream"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "this$0"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$entryFile"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v6

    invoke-interface {v0, v6, v7}, Lorg/fdroid/database/RepositoryDaoInt;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 99
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v7

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-nez v7, :cond_2

    .line 103
    new-instance v6, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;

    invoke-direct {v6, v4, v1, v5}, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;-><init>(Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/EntryFileV2;)V

    move-wide/from16 v4, p3

    invoke-interface {v2, v4, v5, v3, v6}, Lorg/fdroid/index/v2/IndexV2StreamProcessor;->process(JLjava/io/InputStream;Lkotlin/jvm/functions/Function1;)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/fdroid/database/RepositoryDaoInt;->getRepositoryPreferences(J)Lorg/fdroid/database/RepositoryPreferences;

    move-result-object v4

    if-eqz v4, :cond_1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1f7

    const/16 v16, 0x0

    .line 109
    invoke-static/range {v4 .. v16}, Lorg/fdroid/database/RepositoryPreferences;->copy$default(Lorg/fdroid/database/RepositoryPreferences;JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/RepositoryPreferences;

    move-result-object v1

    .line 112
    invoke-interface {v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->updateRepositoryPreferences(Lorg/fdroid/database/RepositoryPreferences;)V

    return-void

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No repo prefs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repo timestamp expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/IndexV2Updater;->formatVersion:Lorg/fdroid/index/IndexFormatVersion;

    return-object v0
.end method

.method protected updateRepo(Lorg/fdroid/database/Repository;)Lorg/fdroid/index/IndexUpdateResult;
    .locals 14

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v2/IndexV2Updater;->getCertAndEntry(Lorg/fdroid/database/Repository;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/index/v2/Entry;

    .line 40
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Entry;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    sget-object p1, Lorg/fdroid/index/IndexUpdateResult$Unchanged;->INSTANCE:Lorg/fdroid/index/IndexUpdateResult$Unchanged;

    return-object p1

    .line 42
    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/fdroid/index/v2/Entry;->getDiff(J)Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object v5

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v5, :cond_2

    .line 43
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v3

    sget-object v4, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    new-instance v3, Lorg/fdroid/database/DbV2DiffStreamReceiver;

    iget-object v4, p0, Lorg/fdroid/index/v2/IndexV2Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v6

    iget-object v8, p0, Lorg/fdroid/index/v2/IndexV2Updater;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    invoke-direct {v3, v4, v6, v7, v8}, Lorg/fdroid/database/DbV2DiffStreamReceiver;-><init>(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V

    .line 51
    new-instance v8, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;

    invoke-direct {v8, v3, v2, v1, v2}, Lorg/fdroid/index/v2/IndexV2DiffStreamProcessor;-><init>(Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Entry;->getVersion()J

    move-result-wide v6

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/fdroid/index/v2/IndexV2Updater;->processStream(Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/EntryFileV2;JLorg/fdroid/index/v2/IndexV2StreamProcessor;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p1

    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    new-instance v3, Lorg/fdroid/database/DbV2StreamReceiver;

    iget-object v4, p0, Lorg/fdroid/index/v2/IndexV2Updater;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v5

    iget-object v7, p0, Lorg/fdroid/index/v2/IndexV2Updater;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/fdroid/database/DbV2StreamReceiver;-><init>(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V

    .line 46
    new-instance v13, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

    invoke-direct {v13, v3, v2, v1, v2}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;-><init>(Lorg/fdroid/index/v2/IndexV2StreamReceiver;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    invoke-virtual {v0}, Lorg/fdroid/index/v2/Entry;->getIndex()Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object v10

    invoke-virtual {v0}, Lorg/fdroid/index/v2/Entry;->getVersion()J

    move-result-wide v11

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lorg/fdroid/index/v2/IndexV2Updater;->processStream(Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/EntryFileV2;JLorg/fdroid/index/v2/IndexV2StreamProcessor;)Lorg/fdroid/index/IndexUpdateResult;

    move-result-object p1

    :goto_1
    return-object p1
.end method
