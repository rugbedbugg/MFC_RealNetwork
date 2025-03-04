.class public final Lorg/fdroid/repo/RepoV2Fetcher;
.super Ljava/lang/Object;
.source "RepoV2Fetcher.kt"

# interfaces
.implements Lorg/fdroid/repo/RepoFetcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ0\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096@\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/fdroid/repo/RepoV2Fetcher;",
        "Lorg/fdroid/repo/RepoFetcher;",
        "tempFileProvider",
        "Lorg/fdroid/index/TempFileProvider;",
        "downloaderFactory",
        "Lorg/fdroid/download/DownloaderFactory;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "repoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "proxy",
        "Ljava/net/Proxy;",
        "(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Ljava/net/Proxy;)V",
        "log",
        "Lmu/KLogger;",
        "fetchRepo",
        "",
        "uri",
        "Landroid/net/Uri;",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "receiver",
        "Lorg/fdroid/repo/RepoPreviewReceiver;",
        "fingerprint",
        "",
        "(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

.field private final httpManager:Lorg/fdroid/download/HttpManager;

.field private final log:Lmu/KLogger;

.field private final proxy:Ljava/net/Proxy;

.field private final repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

.field private final tempFileProvider:Lorg/fdroid/index/TempFileProvider;


# direct methods
.method public constructor <init>(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Ljava/net/Proxy;)V
    .locals 1

    const-string v0, "tempFileProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoUriBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/repo/RepoV2Fetcher;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    iput-object p2, p0, Lorg/fdroid/repo/RepoV2Fetcher;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iput-object p3, p0, Lorg/fdroid/repo/RepoV2Fetcher;->httpManager:Lorg/fdroid/download/HttpManager;

    iput-object p4, p0, Lorg/fdroid/repo/RepoV2Fetcher;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    iput-object p5, p0, Lorg/fdroid/repo/RepoV2Fetcher;->proxy:Ljava/net/Proxy;

    .line 30
    sget-object p1, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object p2, Lorg/fdroid/repo/RepoV2Fetcher$log$1;->INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$log$1;

    invoke-virtual {p1, p2}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/repo/RepoV2Fetcher;->log:Lmu/KLogger;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Ljava/net/Proxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 23
    invoke-direct/range {v0 .. v5}, Lorg/fdroid/repo/RepoV2Fetcher;-><init>(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Ljava/net/Proxy;)V

    return-void
.end method


# virtual methods
.method public fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lorg/fdroid/database/Repository;",
            "Lorg/fdroid/repo/RepoPreviewReceiver;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/index/SigningException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    instance-of v3, v2, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;

    iget v4, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;

    invoke-direct {v3, v1, v2}, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;-><init>(Lorg/fdroid/repo/RepoV2Fetcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 33
    iget v5, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

    iget-object v3, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lorg/fdroid/index/v2/Entry;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/fdroid/repo/RepoV2Fetcher;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    .line 40
    invoke-interface {v2}, Lorg/fdroid/index/TempFileProvider;->createTempFile()Ljava/io/File;

    move-result-object v2

    iget-object v5, v1, Lorg/fdroid/repo/RepoV2Fetcher;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v8, v1, Lorg/fdroid/repo/RepoV2Fetcher;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    const-string v9, "entry.jar"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-interface {v8, v0, v9}, Lorg/fdroid/index/RepoUriBuilder;->getUri(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 44
    sget-object v9, Lorg/fdroid/index/v2/FileV2;->Companion:Lorg/fdroid/index/v2/FileV2$Companion;

    const-string v10, "/entry.jar"

    invoke-virtual {v9, v10}, Lorg/fdroid/index/v2/FileV2$Companion;->fromPath(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v9

    .line 41
    invoke-virtual {v5, v0, v8, v9, v2}, Lorg/fdroid/download/DownloaderFactory;->create(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object v5

    .line 48
    :try_start_0
    invoke-virtual {v5}, Lorg/fdroid/download/Downloader;->download()V

    .line 49
    new-instance v5, Lorg/fdroid/index/v2/EntryVerifier;

    move-object/from16 v8, p4

    invoke-direct {v5, v2, v6, v8}, Lorg/fdroid/index/v2/EntryVerifier;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$2;->INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$2;

    .line 50
    invoke-virtual {v5, v8}, Lorg/fdroid/index/JarIndexVerifier;->getStreamAndVerify(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 47
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fdroid/index/v2/Entry;

    iget-object v8, v1, Lorg/fdroid/repo/RepoV2Fetcher;->log:Lmu/KLogger;

    sget-object v9, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;->INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$3;

    .line 57
    invoke-interface {v8, v9}, Lmu/KLogger;->info(Lkotlin/jvm/functions/Function0;)V

    .line 59
    new-instance v8, Lorg/fdroid/repo/RepoV2StreamReceiver;

    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p3

    invoke-direct {v8, v11, v2, v9, v10}, Lorg/fdroid/repo/RepoV2StreamReceiver;-><init>(Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v2, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

    const/4 v9, 0x2

    invoke-direct {v2, v8, v6, v9, v6}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;-><init>(Lorg/fdroid/index/v2/IndexV2StreamReceiver;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    const-string v11, "http"

    invoke-static {v8, v11, v10, v9, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-ne v8, v7, :cond_4

    .line 63
    new-instance v8, Lorg/fdroid/download/DownloadRequest;

    .line 64
    invoke-virtual {v5}, Lorg/fdroid/index/v2/Entry;->getIndex()Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object v12

    .line 65
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/database/Repository;->getMirrors()Ljava/util/List;

    move-result-object v13

    iget-object v14, v1, Lorg/fdroid/repo/RepoV2Fetcher;->proxy:Ljava/net/Proxy;

    .line 67
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v15

    .line 68
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x20

    const/16 v19, 0x0

    move-object v11, v8

    .line 63
    invoke-direct/range {v11 .. v19}, Lorg/fdroid/download/DownloadRequest;-><init>(Lorg/fdroid/IndexFile;Ljava/util/List;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/download/Mirror;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v1, Lorg/fdroid/repo/RepoV2Fetcher;->httpManager:Lorg/fdroid/download/HttpManager;

    .line 70
    iput-object v5, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->L$1:Ljava/lang/Object;

    iput v7, v3, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$1;->label:I

    invoke-static {v0, v8, v3}, Lorg/fdroid/download/HttpManagerKt;->getDigestInputStream(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    move-object v3, v5

    move-object/from16 v20, v2

    move-object v2, v0

    move-object/from16 v0, v20

    :goto_1
    check-cast v2, Lorg/fdroid/fdroid/DigestInputStream;

    move-object v5, v3

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lorg/fdroid/repo/RepoV2Fetcher;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    .line 73
    invoke-interface {v3}, Lorg/fdroid/index/TempFileProvider;->createTempFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, v1, Lorg/fdroid/repo/RepoV2Fetcher;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v8, v1, Lorg/fdroid/repo/RepoV2Fetcher;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    .line 76
    invoke-virtual {v5}, Lorg/fdroid/index/v2/Entry;->getIndex()Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object v9

    invoke-virtual {v9}, Lorg/fdroid/index/v2/EntryFileV2;->getName()Ljava/lang/String;

    move-result-object v9

    new-array v11, v7, [C

    const/16 v12, 0x2f

    aput-char v12, v11, v10

    invoke-static {v9, v11}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Lorg/fdroid/index/RepoUriBuilder;->getUri(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    invoke-virtual {v5}, Lorg/fdroid/index/v2/Entry;->getIndex()Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object v9

    .line 74
    invoke-virtual {v4, v0, v8, v9, v3}, Lorg/fdroid/download/DownloaderFactory;->create(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lorg/fdroid/download/Downloader;->download()V

    const-string v0, "SHA-256"

    .line 81
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 82
    new-instance v4, Lorg/fdroid/fdroid/DigestInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v8, v0}, Lorg/fdroid/fdroid/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v0, v2

    move-object v2, v4

    .line 85
    :goto_2
    :try_start_1
    invoke-virtual {v5}, Lorg/fdroid/index/v2/Entry;->getVersion()J

    move-result-wide v3

    sget-object v8, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;->INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;

    invoke-virtual {v0, v3, v4, v2, v8}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->process(JLjava/io/InputStream;Lkotlin/jvm/functions/Function1;)V

    .line 86
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v2}, Lorg/fdroid/fdroid/DigestInputStream;->getDigestHex()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v5}, Lorg/fdroid/index/v2/Entry;->getIndex()Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/index/v2/EntryFileV2;->getSha256()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 89
    :cond_5
    new-instance v2, Lorg/fdroid/index/SigningException;

    invoke-virtual {v5}, Lorg/fdroid/index/v2/Entry;->getIndex()Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fdroid/index/v2/EntryFileV2;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hash: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 84
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :catchall_2
    move-exception v0

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method
