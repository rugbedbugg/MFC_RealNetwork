.class final Lorg/fdroid/fdroid/data/ContentProviderMigrator;
.super Ljava/lang/Object;
.source "ContentProviderMigrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/data/ContentProviderMigrator$ContentProviderDbHelper;
    }
.end annotation


# static fields
.field private static final OLD_DB_NAME:Ljava/lang/String; = "fdroid"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrateIgnoredUpdates(Lorg/fdroid/database/FDroidDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .line 113
    invoke-interface {p1}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object p1

    const-string v0, "packageName"

    const-string v1, "ignoreThisUpdate"

    const-string v2, "ignoreAllUpdates"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "fdroid_appPrefs"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    .line 116
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 117
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 120
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    :cond_0
    move-wide v6, v3

    .line 125
    new-instance v3, Lorg/fdroid/database/AppPrefs;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/fdroid/database/AppPrefs;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)V

    invoke-interface {p1, v3}, Lorg/fdroid/database/AppPrefsDao;->update(Lorg/fdroid/database/AppPrefs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 127
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_1
    if-eqz p2, :cond_2

    .line 116
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method private migrateOldRepos(Lorg/fdroid/database/FDroidDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    const-string v1, "disabledMirrors"

    .line 43
    invoke-interface/range {p1 .. p1}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lorg/fdroid/database/RepositoryDao;->getRepositories()Ljava/util/List;

    move-result-object v2

    const-string v3, "name"

    const-string v4, "address"

    const-string v5, "pubkey"

    const-string v6, "inuse"

    const-string v7, "userMirrors"

    const-string v8, "disabledMirrors"

    const-string v9, "username"

    const-string v10, "password"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v13

    :try_start_0
    const-string v12, "fdroid_repo"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p2

    .line 57
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "name"

    .line 59
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "address"

    .line 60
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "pubkey"

    .line 61
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "inuse"

    .line 64
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :goto_2
    const-string v5, "userMirrors"

    .line 65
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, ","

    const/4 v10, 0x0

    if-nez v5, :cond_2

    move-object v13, v10

    goto :goto_3

    .line 66
    :cond_2
    :try_start_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v13, v5

    .line 67
    :goto_3
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v14, v10

    goto :goto_4

    .line 69
    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v14, v5

    :goto_4
    const-string v5, "username"

    .line 70
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v5, "password"

    .line 71
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 74
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/fdroid/database/Repository;

    .line 75
    invoke-virtual {v8}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v10, v8

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    :goto_5
    move-object v1, v0

    goto/16 :goto_9

    :cond_5
    :goto_6
    if-nez v10, :cond_6

    .line 82
    new-instance v10, Lorg/fdroid/database/InitialRepository;

    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v16, 0x0

    move-object v5, v10

    move-object/from16 p1, v2

    move-object v2, v10

    move-wide/from16 v10, v16

    move-object/from16 v16, v1

    move-object v1, v12

    move v12, v4

    :try_start_3
    invoke-direct/range {v5 .. v12}, Lorg/fdroid/database/InitialRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 84
    invoke-interface {v0, v2}, Lorg/fdroid/database/RepositoryDao;->insert(Lorg/fdroid/database/InitialRepository;)J

    move-result-wide v5

    .line 85
    invoke-interface {v0, v5, v6}, Lorg/fdroid/database/RepositoryDao;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/fdroid/database/Repository;

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_6
    move-object/from16 v16, v1

    move-object/from16 p1, v2

    move-object v1, v12

    .line 87
    invoke-virtual {v10}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    move-object/from16 v2, p1

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 92
    :cond_8
    :goto_8
    invoke-virtual {v10}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result v2

    if-eq v2, v4, :cond_9

    .line 93
    invoke-virtual {v10}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v5

    invoke-interface {v0, v5, v6, v4}, Lorg/fdroid/database/RepositoryDao;->setRepositoryEnabled(JZ)V

    :cond_9
    if-eqz v13, :cond_a

    .line 95
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 96
    invoke-virtual {v10}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5, v13}, Lorg/fdroid/database/RepositoryDao;->updateUserMirrors(JLjava/util/List;)V

    :cond_a
    if-eqz v14, :cond_b

    .line 98
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 99
    invoke-virtual {v10}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5, v14}, Lorg/fdroid/database/RepositoryDao;->updateDisabledMirrors(JLjava/util/List;)V

    :cond_b
    if-nez v15, :cond_c

    if-eqz v1, :cond_7

    .line 102
    :cond_c
    invoke-virtual {v10}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5, v15, v1}, Lorg/fdroid/database/RepositoryDao;->updateUsernameAndPassword(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :cond_d
    move-object/from16 v16, v1

    .line 105
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :goto_9
    if-eqz v3, :cond_e

    .line 57
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_a
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    .line 106
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "DbHelper"

    const-string v2, "disabledMirrors column missing. Can\'t migrate. "

    .line 107
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void

    .line 108
    :cond_f
    throw v0
.end method


# virtual methods
.method needsMigration(Landroid/content/Context;)Z
    .locals 5

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "fdroid"

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method removeOldDb(Landroid/content/Context;)V
    .locals 1

    const-string v0, "fdroid"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method runMigrations(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;)V
    .locals 1

    .line 35
    new-instance v0, Lorg/fdroid/fdroid/data/ContentProviderMigrator$ContentProviderDbHelper;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/data/ContentProviderMigrator$ContentProviderDbHelper;-><init>(Landroid/content/Context;)V

    .line 36
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 37
    invoke-direct {p0, p2, p1}, Lorg/fdroid/fdroid/data/ContentProviderMigrator;->migrateOldRepos(Lorg/fdroid/database/FDroidDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    invoke-direct {p0, p2, p1}, Lorg/fdroid/fdroid/data/ContentProviderMigrator;->migrateIgnoredUpdates(Lorg/fdroid/database/FDroidDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
