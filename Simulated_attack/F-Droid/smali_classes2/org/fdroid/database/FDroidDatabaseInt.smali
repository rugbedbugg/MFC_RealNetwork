.class public abstract Lorg/fdroid/database/FDroidDatabaseInt;
.super Landroidx/room/RoomDatabase;
.source "FDroidDatabase.kt"

# interfaces
.implements Lorg/fdroid/database/FDroidDatabase;
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0012H&J\u0008\u0010\u0013\u001a\u00020\u0014H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/fdroid/database/FDroidDatabaseInt;",
        "Landroidx/room/RoomDatabase;",
        "Lorg/fdroid/database/FDroidDatabase;",
        "Ljava/io/Closeable;",
        "()V",
        "afterLocalesChanged",
        "",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "afterUpdatingRepo",
        "repoId",
        "",
        "clearAllAppData",
        "getAppDao",
        "Lorg/fdroid/database/AppDaoInt;",
        "getAppPrefsDao",
        "Lorg/fdroid/database/AppPrefsDaoInt;",
        "getRepositoryDao",
        "Lorg/fdroid/database/RepositoryDaoInt;",
        "getVersionDao",
        "Lorg/fdroid/database/VersionDaoInt;",
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


# direct methods
.method public static synthetic $r8$lambda$71V0Lddvprvt0U-2aeuqUo5-6Es(Lorg/fdroid/database/AppDaoInt;Landroidx/core/os/LocaleListCompat;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/database/FDroidDatabaseInt;->afterLocalesChanged$lambda$1(Lorg/fdroid/database/AppDaoInt;Landroidx/core/os/LocaleListCompat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dWL2ywLgmrKnuthlIBSV9f1UYfA(Lorg/fdroid/database/FDroidDatabaseInt;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/database/FDroidDatabaseInt;->clearAllAppData$lambda$2(Lorg/fdroid/database/FDroidDatabaseInt;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method private static final afterLocalesChanged$lambda$1(Lorg/fdroid/database/AppDaoInt;Landroidx/core/os/LocaleListCompat;)V
    .locals 8

    const-string v0, "$appDao"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$locales"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p0}, Lorg/fdroid/database/AppDaoInt;->getAppMetadata()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/AppMetadata;

    .line 65
    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getRepoId()J

    move-result-wide v3

    .line 66
    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 67
    sget-object v2, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getName()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2, v6, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 68
    invoke-virtual {v1}, Lorg/fdroid/database/AppMetadata;->getSummary()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object v2, p0

    .line 64
    invoke-interface/range {v2 .. v7}, Lorg/fdroid/database/AppDaoInt;->updateAppMetadata(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final clearAllAppData$lambda$2(Lorg/fdroid/database/FDroidDatabaseInt;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/database/AppDaoInt;->clearAll()V

    .line 85
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/database/RepositoryDaoInt;->resetTimestamps()V

    .line 86
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/fdroid/database/RepositoryDaoInt;->resetETags()V

    return-void
.end method


# virtual methods
.method public afterLocalesChanged(Landroidx/core/os/LocaleListCompat;)V
    .locals 2

    const-string v0, "locales"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v0

    .line 62
    new-instance v1, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/database/AppDaoInt;Landroidx/core/os/LocaleListCompat;)V

    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final afterUpdatingRepo(J)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/fdroid/database/AppDaoInt;->updateCompatibility(J)V

    return-void
.end method

.method public clearAllAppData()V
    .locals 1

    .line 83
    new-instance v0, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/database/FDroidDatabaseInt;)V

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract getAppDao()Lorg/fdroid/database/AppDaoInt;
.end method

.method public abstract getAppPrefsDao()Lorg/fdroid/database/AppPrefsDaoInt;
.end method

.method public abstract getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;
.end method

.method public abstract getVersionDao()Lorg/fdroid/database/VersionDaoInt;
.end method
