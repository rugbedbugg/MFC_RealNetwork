.class public final Lorg/fdroid/database/DbV2StreamReceiver;
.super Ljava/lang/Object;
.source "DbV2StreamReceiver.kt"

# interfaces
.implements Lorg/fdroid/index/v2/IndexV2StreamReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/fdroid/database/DbV2StreamReceiver;",
        "Lorg/fdroid/index/v2/IndexV2StreamReceiver;",
        "db",
        "Lorg/fdroid/database/FDroidDatabaseInt;",
        "repoId",
        "",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityChecker;",
        "(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V",
        "clearedRepoData",
        "",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "nonNullFileV2",
        "Lkotlin/Function1;",
        "Lorg/fdroid/index/v2/FileV2;",
        "",
        "clearRepoDataIfNeeded",
        "onStreamEnded",
        "receive",
        "packageName",
        "",
        "p",
        "Lorg/fdroid/index/v2/PackageV2;",
        "repo",
        "Lorg/fdroid/index/v2/RepoV2;",
        "version",
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
.field private clearedRepoData:Z

.field private final compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

.field private final db:Lorg/fdroid/database/FDroidDatabaseInt;

.field private final locales:Landroidx/core/os/LocaleListCompat;

.field private final nonNullFileV2:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

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

    iput-object p1, p0, Lorg/fdroid/database/DbV2StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    iput-wide p2, p0, Lorg/fdroid/database/DbV2StreamReceiver;->repoId:J

    iput-object p4, p0, Lorg/fdroid/database/DbV2StreamReceiver;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    .line 24
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const-string p2, "getDefault(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/database/DbV2StreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    sget-object p1, Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;->INSTANCE:Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;

    iput-object p1, p0, Lorg/fdroid/database/DbV2StreamReceiver;->nonNullFileV2:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getCompatibilityChecker$p(Lorg/fdroid/database/DbV2StreamReceiver;)Lorg/fdroid/CompatibilityChecker;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    return-object p0
.end method

.method private final clearRepoDataIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->clearedRepoData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 65
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v0

    iget-wide v1, p0, Lorg/fdroid/database/DbV2StreamReceiver;->repoId:J

    invoke-interface {v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt;->clear(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->clearedRepoData:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized onStreamEnded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    iget-wide v1, p0, Lorg/fdroid/database/DbV2StreamReceiver;->repoId:J

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/fdroid/database/FDroidDatabaseInt;->afterUpdatingRepo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized receive(Ljava/lang/String;Lorg/fdroid/index/v2/PackageV2;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->nonNullFileV2:Lkotlin/jvm/functions/Function1;

    .line 45
    invoke-virtual {p2, v0}, Lorg/fdroid/index/v2/PackageV2;->walkFiles(Lkotlin/jvm/functions/Function1;)V

    .line 46
    invoke-direct {p0}, Lorg/fdroid/database/DbV2StreamReceiver;->clearRepoDataIfNeeded()V

    iget-object v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 47
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV2StreamReceiver;->repoId:J

    invoke-virtual {p2}, Lorg/fdroid/index/v2/PackageV2;->getMetadata()Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v5

    iget-object v6, p0, Lorg/fdroid/database/DbV2StreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt;->insert(JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 48
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getVersionDao()Lorg/fdroid/database/VersionDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV2StreamReceiver;->repoId:J

    invoke-virtual {p2}, Lorg/fdroid/index/v2/PackageV2;->getVersions()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lorg/fdroid/database/DbV2StreamReceiver$receive$1;

    invoke-direct {v6, p0}, Lorg/fdroid/database/DbV2StreamReceiver$receive$1;-><init>(Lorg/fdroid/database/DbV2StreamReceiver;)V

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/VersionDaoInt;->insert(JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receive(Lorg/fdroid/index/v2/RepoV2;J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->nonNullFileV2:Lkotlin/jvm/functions/Function1;

    .line 38
    invoke-virtual {p1, v0}, Lorg/fdroid/index/v2/RepoV2;->walkFiles(Lkotlin/jvm/functions/Function1;)V

    .line 39
    invoke-direct {p0}, Lorg/fdroid/database/DbV2StreamReceiver;->clearRepoDataIfNeeded()V

    iget-object v0, p0, Lorg/fdroid/database/DbV2StreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 40
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV2StreamReceiver;->repoId:J

    sget-object v7, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v7}, Lorg/fdroid/database/RepositoryDaoInt;->update(JLorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
