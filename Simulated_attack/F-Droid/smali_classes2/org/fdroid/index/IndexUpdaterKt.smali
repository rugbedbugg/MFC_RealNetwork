.class public final Lorg/fdroid/index/IndexUpdaterKt;
.super Ljava/lang/Object;
.source "IndexUpdater.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "defaultRepoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "getDefaultRepoUriBuilder",
        "()Lorg/fdroid/index/RepoUriBuilder;",
        "setIndexUpdateListener",
        "",
        "Lorg/fdroid/download/Downloader;",
        "listener",
        "Lorg/fdroid/index/IndexUpdateListener;",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "database_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final defaultRepoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;


# direct methods
.method public static synthetic $r8$lambda$Oi5gQvIswbiGQw9tTPd7Fh_grRQ(Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/fdroid/index/IndexUpdaterKt;->setIndexUpdateListener$lambda$2(Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4tE2Nzonh7TmTGDgx3WhydEvzw(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/index/IndexUpdaterKt;->defaultRepoUriBuilder$lambda$1(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/fdroid/index/IndexUpdaterKt;->defaultRepoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    return-void
.end method

.method private static final defaultRepoUriBuilder$lambda$1(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const-string v0, "repo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathElements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 13309
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 38
    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getDefaultRepoUriBuilder()Lorg/fdroid/index/RepoUriBuilder;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/IndexUpdaterKt;->defaultRepoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    return-object v0
.end method

.method public static final setIndexUpdateListener(Lorg/fdroid/download/Downloader;Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;)V

    invoke-virtual {p0, v0}, Lorg/fdroid/download/Downloader;->setListener(Lorg/fdroid/fdroid/ProgressListener;)V

    :cond_0
    return-void
.end method

.method private static final setIndexUpdateListener$lambda$2(Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;JJ)V
    .locals 1

    const-string v0, "$repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface/range {p0 .. p5}, Lorg/fdroid/index/IndexUpdateListener;->onDownloadProgress(Lorg/fdroid/database/Repository;JJ)V

    return-void
.end method
