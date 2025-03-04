.class public final Lorg/fdroid/database/DbV2DiffStreamReceiver;
.super Ljava/lang/Object;
.source "DbV2DiffStreamReceiver.kt"

# interfaces
.implements Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J(\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/fdroid/database/DbV2DiffStreamReceiver;",
        "Lorg/fdroid/index/v2/IndexV2DiffStreamReceiver;",
        "db",
        "Lorg/fdroid/database/FDroidDatabaseInt;",
        "repoId",
        "",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityChecker;",
        "(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "onStreamEnded",
        "",
        "receivePackageMetadataDiff",
        "packageName",
        "",
        "packageJsonObject",
        "Lkotlinx/serialization/json/JsonObject;",
        "receiveRepoDiff",
        "version",
        "repoJsonObject",
        "receiveVersionsDiff",
        "versionsDiffMap",
        "",
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    iput-wide p2, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->repoId:J

    iput-object p4, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    .line 14
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const-string p2, "getDefault(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    return-void
.end method

.method public static final synthetic access$getCompatibilityChecker$p(Lorg/fdroid/database/DbV2DiffStreamReceiver;)Lorg/fdroid/CompatibilityChecker;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized onStreamEnded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    iget-wide v1, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->repoId:J

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/fdroid/database/FDroidDatabaseInt;->afterUpdatingRepo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public receivePackageMetadataDiff(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 21
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->repoId:J

    iget-object v6, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/AppDaoInt;->updateApp(JLjava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroidx/core/os/LocaleListCompat;)V

    return-void
.end method

.method public receiveRepoDiff(JLkotlinx/serialization/json/JsonObject;)V
    .locals 7

    const-string v0, "repoJsonObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 17
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->repoId:J

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/RepositoryDaoInt;->updateRepository(JJLkotlinx/serialization/json/JsonObject;)V

    return-void
.end method

.method public receiveVersionsDiff(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->db:Lorg/fdroid/database/FDroidDatabaseInt;

    .line 28
    invoke-virtual {v0}, Lorg/fdroid/database/FDroidDatabaseInt;->getVersionDao()Lorg/fdroid/database/VersionDaoInt;

    move-result-object v1

    iget-wide v2, p0, Lorg/fdroid/database/DbV2DiffStreamReceiver;->repoId:J

    new-instance v6, Lorg/fdroid/database/DbV2DiffStreamReceiver$receiveVersionsDiff$1;

    invoke-direct {v6, p0}, Lorg/fdroid/database/DbV2DiffStreamReceiver$receiveVersionsDiff$1;-><init>(Lorg/fdroid/database/DbV2DiffStreamReceiver;)V

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lorg/fdroid/database/VersionDaoInt;->update(JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
