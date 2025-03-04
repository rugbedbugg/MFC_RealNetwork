.class public final Lorg/fdroid/repo/RepoAdderKt;
.super Ljava/lang/Object;
.source "RepoAdder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "REPO_ID",
        "",
        "defaultRepoUriBuilder",
        "Lorg/fdroid/index/RepoUriBuilder;",
        "getDefaultRepoUriBuilder",
        "()Lorg/fdroid/index/RepoUriBuilder;",
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
.field public static final REPO_ID:J

.field private static final defaultRepoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;


# direct methods
.method public static synthetic $r8$lambda$xfCGaIrQEyy61NtyY1XBUJvvHgk(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/repo/RepoAdderKt;->defaultRepoUriBuilder$lambda$1(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 400
    new-instance v0, Lorg/fdroid/repo/RepoAdderKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/fdroid/repo/RepoAdderKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/fdroid/repo/RepoAdderKt;->defaultRepoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    return-void
.end method

.method private static final defaultRepoUriBuilder$lambda$1(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const-string v0, "repo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathElements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
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

    .line 402
    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
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
    sget-object v0, Lorg/fdroid/repo/RepoAdderKt;->defaultRepoUriBuilder:Lorg/fdroid/index/RepoUriBuilder;

    return-object v0
.end method
