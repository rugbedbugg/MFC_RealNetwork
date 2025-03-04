.class public final Lorg/fdroid/repo/RepoV1Fetcher;
.super Ljava/lang/Object;
.source "RepoV1Fetcher.kt"

# interfaces
.implements Lorg/fdroid/repo/RepoFetcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J0\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/fdroid/repo/RepoV1Fetcher;",
        "Lorg/fdroid/repo/RepoFetcher;",
        "tempFileProvider",
        "Lorg/fdroid/index/TempFileProvider;",
        "downloaderFactory",
        "Lorg/fdroid/download/DownloaderFactory;",
        "repoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;)V",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
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

.field private final locales:Landroidx/core/os/LocaleListCompat;

.field private final repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

.field private final tempFileProvider:Lorg/fdroid/index/TempFileProvider;


# direct methods
.method public constructor <init>(Lorg/fdroid/index/TempFileProvider;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;)V
    .locals 1

    const-string v0, "tempFileProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloaderFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoUriBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/repo/RepoV1Fetcher;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    iput-object p2, p0, Lorg/fdroid/repo/RepoV1Fetcher;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iput-object p3, p0, Lorg/fdroid/repo/RepoV1Fetcher;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    .line 25
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const-string p2, "getDefault(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/repo/RepoV1Fetcher;->locales:Landroidx/core/os/LocaleListCompat;

    return-void
.end method


# virtual methods
.method public fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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
            Lorg/fdroid/index/SigningException;,
            Lkotlinx/serialization/SerializationException;
        }
    .end annotation

    iget-object p1, p0, Lorg/fdroid/repo/RepoV1Fetcher;->tempFileProvider:Lorg/fdroid/index/TempFileProvider;

    .line 35
    invoke-interface {p1}, Lorg/fdroid/index/TempFileProvider;->createTempFile()Ljava/io/File;

    move-result-object p1

    iget-object p5, p0, Lorg/fdroid/repo/RepoV1Fetcher;->downloaderFactory:Lorg/fdroid/download/DownloaderFactory;

    iget-object v0, p0, Lorg/fdroid/repo/RepoV1Fetcher;->repoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    const-string v1, "index-v1.jar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-interface {v0, p2, v1}, Lorg/fdroid/index/RepoUriBuilder;->getUri(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    sget-object v1, Lorg/fdroid/index/v2/FileV2;->Companion:Lorg/fdroid/index/v2/FileV2$Companion;

    const-string v2, "/index-v1.jar"

    invoke-virtual {v1, v2}, Lorg/fdroid/index/v2/FileV2$Companion;->fromPath(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v1

    .line 36
    invoke-virtual {p5, p2, v0, v1, p1}, Lorg/fdroid/download/DownloaderFactory;->create(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object p5

    .line 43
    :try_start_0
    invoke-virtual {p5}, Lorg/fdroid/download/Downloader;->download()V

    .line 44
    new-instance p5, Lorg/fdroid/index/v1/IndexV1Verifier;

    const/4 v0, 0x0

    invoke-direct {p5, p1, v0, p4}, Lorg/fdroid/index/v1/IndexV1Verifier;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;->INSTANCE:Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;

    .line 45
    invoke-virtual {p5, p4}, Lorg/fdroid/index/JarIndexVerifier;->getStreamAndVerify(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 42
    invoke-virtual {p4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v1/IndexV1;

    .line 51
    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1;->getRepo()Lorg/fdroid/index/v1/RepoV1;

    move-result-object p4

    invoke-virtual {p4}, Lorg/fdroid/index/v1/RepoV1;->getVersion()I

    move-result p4

    .line 52
    new-instance p5, Lorg/fdroid/index/IndexConverter;

    const/4 v1, 0x1

    invoke-direct {p5, v0, v1, v0}, Lorg/fdroid/index/IndexConverter;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p5, p1}, Lorg/fdroid/index/IndexConverter;->toIndexV2(Lorg/fdroid/index/v1/IndexV1;)Lorg/fdroid/index/v2/IndexV2;

    move-result-object p1

    .line 53
    sget-object v1, Lorg/fdroid/repo/RepoV2StreamReceiver;->Companion:Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;

    .line 54
    invoke-virtual {p1}, Lorg/fdroid/index/v2/IndexV2;->getRepo()Lorg/fdroid/index/v2/RepoV2;

    move-result-object v2

    int-to-long v3, p4

    .line 56
    sget-object v5, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    .line 58
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual/range {v1 .. v8}, Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;->getRepository(Lorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object p2

    .line 61
    invoke-interface {p3, p2}, Lorg/fdroid/repo/RepoPreviewReceiver;->onRepoReceived(Lorg/fdroid/database/Repository;)V

    .line 62
    invoke-virtual {p1}, Lorg/fdroid/index/v2/IndexV2;->getPackages()Ljava/util/Map;

    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/index/v2/PackageV2;

    .line 63
    sget-object p5, Lorg/fdroid/repo/RepoV2StreamReceiver;->Companion:Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;

    iget-object v0, p0, Lorg/fdroid/repo/RepoV1Fetcher;->locales:Landroidx/core/os/LocaleListCompat;

    invoke-virtual {p5, p4, p2, v0}, Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;->getAppOverViewItem(Ljava/lang/String;Lorg/fdroid/index/v2/PackageV2;Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/database/AppOverviewItem;

    move-result-object p2

    .line 64
    invoke-interface {p3, p2}, Lorg/fdroid/repo/RepoPreviewReceiver;->onAppReceived(Lorg/fdroid/database/AppOverviewItem;)V

    goto :goto_0

    .line 66
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p2

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2
.end method
