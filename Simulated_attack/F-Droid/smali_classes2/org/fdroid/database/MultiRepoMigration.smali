.class public final Lorg/fdroid/database/MultiRepoMigration;
.super Ljava/lang/Object;
.source "Migrations.kt"

# interfaces
.implements Landroidx/room/migration/AutoMigrationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/database/MultiRepoMigration$Repo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u001c\u0010\u000e\u001a\u00020\n*\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/fdroid/database/MultiRepoMigration;",
        "Landroidx/room/migration/AutoMigrationSpec;",
        "()V",
        "log",
        "Lmu/KLogger;",
        "getRepo",
        "Lorg/fdroid/database/MultiRepoMigration$Repo;",
        "c",
        "Landroid/database/Cursor;",
        "migrateWeights",
        "",
        "db",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "onPostMigrate",
        "updateRepoWeight",
        "repo",
        "newWeight",
        "",
        "Repo",
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
.field private final log:Lmu/KLogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v1, Lorg/fdroid/database/MultiRepoMigration$log$1;->INSTANCE:Lorg/fdroid/database/MultiRepoMigration$log$1;

    invoke-virtual {v0, v1}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/database/MultiRepoMigration;->log:Lmu/KLogger;

    return-void
.end method

.method private final getRepo(Landroid/database/Cursor;)Lorg/fdroid/database/MultiRepoMigration$Repo;
    .locals 7

    .line 92
    new-instance v6, Lorg/fdroid/database/MultiRepoMigration$Repo;

    const/4 v0, 0x0

    .line 93
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v0, 0x1

    .line 94
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 95
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    .line 96
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v0, v6

    .line 92
    invoke-direct/range {v0 .. v5}, Lorg/fdroid/database/MultiRepoMigration$Repo;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method private final migrateWeights(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "\n            SELECT repoId, address, certificate, weight FROM CoreRepository\n            JOIN RepositoryPreferences USING (repoId)\n            ORDER BY weight DESC"

    .line 33
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 39
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    invoke-direct {p0, v2}, Lorg/fdroid/database/MultiRepoMigration;->getRepo(Landroid/database/Cursor;)Lorg/fdroid/database/MultiRepoMigration$Repo;

    move-result-object v3

    iget-object v4, p0, Lorg/fdroid/database/MultiRepoMigration;->log:Lmu/KLogger;

    .line 41
    new-instance v5, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$1;

    invoke-direct {v5, v3}, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$1;-><init>(Lorg/fdroid/database/MultiRepoMigration$Repo;)V

    invoke-interface {v4, v5}, Lmu/KLogger;->error(Lkotlin/jvm/functions/Function0;)V

    .line 42
    invoke-virtual {v3}, Lorg/fdroid/database/MultiRepoMigration$Repo;->isArchive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getCertificate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {v3}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getCertificate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/fdroid/database/MultiRepoMigration;->log:Lmu/KLogger;

    .line 44
    new-instance v5, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$2;

    invoke-direct {v5, v3}, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$2;-><init>(Lorg/fdroid/database/MultiRepoMigration$Repo;)V

    invoke-interface {v4, v5}, Lmu/KLogger;->error(Lkotlin/jvm/functions/Function0;)V

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 49
    :cond_0
    invoke-virtual {v3}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getCertificate()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 38
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v2, 0x3b9aca00

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fdroid/database/MultiRepoMigration$Repo;

    .line 61
    invoke-virtual {v3}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getCertificate()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fdroid/database/MultiRepoMigration$Repo;

    if-nez v4, :cond_3

    .line 63
    invoke-direct {p0, p1, v3, v2}, Lorg/fdroid/database/MultiRepoMigration;->updateRepoWeight(Landroidx/sqlite/db/SupportSQLiteDatabase;Lorg/fdroid/database/MultiRepoMigration$Repo;I)V

    goto :goto_2

    .line 65
    :cond_3
    invoke-direct {p0, p1, v3, v2}, Lorg/fdroid/database/MultiRepoMigration;->updateRepoWeight(Landroidx/sqlite/db/SupportSQLiteDatabase;Lorg/fdroid/database/MultiRepoMigration$Repo;I)V

    add-int/lit8 v5, v2, -0x1

    .line 66
    invoke-direct {p0, p1, v4, v5}, Lorg/fdroid/database/MultiRepoMigration;->updateRepoWeight(Landroidx/sqlite/db/SupportSQLiteDatabase;Lorg/fdroid/database/MultiRepoMigration$Repo;I)V

    .line 67
    invoke-virtual {v3}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getCertificate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 215
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/MultiRepoMigration$Repo;

    .line 74
    invoke-direct {p0, p1, v1, v2}, Lorg/fdroid/database/MultiRepoMigration;->updateRepoWeight(Landroidx/sqlite/db/SupportSQLiteDatabase;Lorg/fdroid/database/MultiRepoMigration$Repo;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    return-void

    .line 38
    :goto_4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final updateRepoWeight(Landroidx/sqlite/db/SupportSQLiteDatabase;Lorg/fdroid/database/MultiRepoMigration$Repo;I)V
    .locals 9

    const-string v1, "RepositoryPreferences"

    const/4 v2, 0x3

    .line 83
    new-instance v3, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "weight"

    .line 84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v4, "repoId = ?"

    new-array v5, v6, [Ljava/lang/Long;

    .line 87
    invoke-virtual {p2}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getRepoId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, v5, v0

    move-object v0, p1

    .line 80
    invoke-interface/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    if-gt p1, v6, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getAddress()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "repo "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " had more than one preference"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Landroidx/room/migration/AutoMigrationSpec$-CC;->$default$onPostMigrate(Landroidx/room/migration/AutoMigrationSpec;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 20
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 22
    :try_start_0
    invoke-direct {p0, p1}, Lorg/fdroid/database/MultiRepoMigration;->migrateWeights(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 23
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw v0
.end method
