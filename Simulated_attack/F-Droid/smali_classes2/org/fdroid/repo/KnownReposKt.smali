.class public final Lorg/fdroid/repo/KnownReposKt;
.super Ljava/lang/Object;
.source "KnownRepos.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\" \u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "knownRepos",
        "",
        "",
        "getKnownRepos",
        "()Ljava/util/Map;",
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
.field private static final knownRepos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "https://apt.izzysoft.de/fdroid/repo"

    const-string v2, "3bf0d6abfeae2f401707b6d966be743bf0eee49c2561b9ba39073711f628937a"

    .line 8
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "https://archive.newpipe.net/fdroid/repo"

    const-string v2, "e2402c78f9b97c6c89e97db914a2751fda1d02fe2039cc0897a462bdb57e7501"

    .line 10
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "https://briarproject.org/fdroid/repo"

    const-string v2, "1fb874bee7276d28ecb2c9b06e8a122ec4bcb4008161436ce474c257cbf49bd6"

    .line 12
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "https://guardianproject.info/fdroid/repo"

    const-string v2, "b7c2eefd8dac7806af67dfcd92eb18126bc08312a7f2d6f3862e46013c7a6135"

    .line 14
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "https://microg.org/fdroid/repo"

    const-string v2, "9bd06727e62796c0130eb6dab39b73157451582cbd138e86c468acc395d14165"

    .line 16
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/fdroid/repo/KnownReposKt;->knownRepos:Ljava/util/Map;

    return-void
.end method

.method public static final getKnownRepos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/fdroid/repo/KnownReposKt;->knownRepos:Ljava/util/Map;

    return-object v0
.end method
