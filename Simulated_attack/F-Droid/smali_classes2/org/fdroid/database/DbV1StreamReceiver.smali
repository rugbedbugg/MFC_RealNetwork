.class public final Lorg/fdroid/database/DbV1StreamReceiver;
.super Ljava/lang/Object;
.source "DbV1StreamReceiver.kt"

# interfaces
.implements Lorg/fdroid/index/v1/IndexV1StreamReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u001a\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000eH\u0016JD\u0010\u0019\u001a\u00020\u000c2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001b0\u00102\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001d0\u00102\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001f0\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lorg/fdroid/database/DbV1StreamReceiver;",
        "Lorg/fdroid/index/v1/IndexV1StreamReceiver;",
        "db",
        "Lorg/fdroid/database/FDroidDatabaseInt;",
        "repoId",
        "",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityChecker;",
        "(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "receive",
        "",
        "packageName",
        "",
        "v",
        "",
        "Lorg/fdroid/index/v2/PackageVersionV2;",
        "m",
        "Lorg/fdroid/index/v2/MetadataV2;",
        "repo",
        "Lorg/fdroid/index/v2/RepoV2;",
        "version",
        "updateAppMetadata",
        "preferredSigner",
        "updateRepo",
        "antiFeatures",
        "Lorg/fdroid/index/v2/AntiFeatureV2;",
        "categories",
        "Lorg/fdroid/index/v2/CategoryV2;",
        "releaseChannels",
        "Lorg/fdroid/index/v2/ReleaseChannelV2;",
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

.field private final locales:Landroidx/core/os/LocaleListCompat;

.field private final repoId:J


# direct methods
.method public constructor <init>(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatibilityChecker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    iput-wide p2, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    iput-object p4, p0, Lorg/fdroid/database/DbV1StreamReceiver;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    .line 25
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const-string p2, "getDefault(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    return-void
.end method

.method public static final synthetic access$getCompatibilityChecker$p(Lorg/fdroid/database/DbV1StreamReceiver;)Lorg/fdroid/CompatibilityChecker;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/fdroid/database/DbV1StreamReceiver;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    return-object p0
.end method


# virtual methods
.method public receive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/PackageVersionV2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 37
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getVersionDao()Lorg/fdroid/database/VersionDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    new-instance v6, Lorg/fdroid/database/DbV1StreamReceiver$receive$1;

    invoke-direct {v6, p0}, Lorg/fdroid/database/DbV1StreamReceiver$receive$1;-><init>(Lorg/fdroid/database/DbV1StreamReceiver;)V

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/VersionDaoInt;->insert(JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public receive(Ljava/lang/String;Lorg/fdroid/index/v2/MetadataV2;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 33
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    iget-object v6, p0, Lorg/fdroid/database/DbV1StreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt;->insert(JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;)V

    return-void
.end method

.method public receive(Lorg/fdroid/index/v2/RepoV2;J)V
    .locals 8

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 28
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v0

    iget-wide v1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    invoke-interface {v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt;->clear(J)V

    iget-object v0, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 29
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    sget-object v7, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v7}, Lorg/fdroid/database/RepositoryDaoInt;->update(JLorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;)V

    return-void
.end method

.method public updateAppMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 56
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v0

    iget-wide v1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/fdroid/database/AppDaoInt;->updatePreferredSigner(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRepo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/AntiFeatureV2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/CategoryV2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/ReleaseChannelV2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "antiFeatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "releaseChannels"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 47
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v0

    iget-wide v1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    .line 48
    invoke-static {p1, v1, v2}, Lorg/fdroid/database/RepositoryKt;->toRepoAntiFeatures(Ljava/util/Map;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insertAntiFeatures(Ljava/util/List;)V

    iget-wide v1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    .line 49
    invoke-static {p2, v1, v2}, Lorg/fdroid/database/RepositoryKt;->toRepoCategories(Ljava/util/Map;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insertCategories(Ljava/util/List;)V

    iget-wide p1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    .line 50
    invoke-static {p3, p1, p2}, Lorg/fdroid/database/RepositoryKt;->toRepoReleaseChannel(Ljava/util/Map;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insertReleaseChannels(Ljava/util/List;)V

    iget-object p1, p0, Lorg/fdroid/database/DbV1StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    iget-wide p2, p0, Lorg/fdroid/database/DbV1StreamReceiver;->repoId:J

    .line 52
    invoke-virtual {p1, p2, p3}, Lorg/fdroid/database/FDroidDatabaseInt;->afterUpdatingRepo(J)V

    return-void
.end method
