.class public final Lorg/fdroid/database/FDroidDatabaseInt_Impl;
.super Lorg/fdroid/database/FDroidDatabaseInt;
.source "FDroidDatabaseInt_Impl.java"


# instance fields
.field private volatile _appDaoInt:Lorg/fdroid/database/AppDaoInt;

.field private volatile _appPrefsDaoInt:Lorg/fdroid/database/AppPrefsDaoInt;

.field private volatile _repositoryDaoInt:Lorg/fdroid/database/RepositoryDaoInt;

.field private volatile _versionDaoInt:Lorg/fdroid/database/VersionDaoInt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fdroid/database/FDroidDatabaseInt;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/fdroid/database/FDroidDatabaseInt_Impl;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/fdroid/database/FDroidDatabaseInt_Impl;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lorg/fdroid/database/FDroidDatabaseInt_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 31
    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lorg/fdroid/database/FDroidDatabaseInt_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lorg/fdroid/database/FDroidDatabaseInt_Impl;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 457
    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 458
    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 464
    :try_start_0
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    .line 466
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `CoreRepository`"

    .line 468
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `Mirror`"

    .line 469
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AntiFeature`"

    .line 470
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `Category`"

    .line 471
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `ReleaseChannel`"

    .line 472
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `RepositoryPreferences`"

    .line 473
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AppMetadata`"

    .line 474
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AppMetadataFts`"

    .line 475
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `LocalizedFile`"

    .line 476
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `LocalizedFileList`"

    .line 477
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `Version`"

    .line 478
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `VersionedString`"

    .line 479
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AppPrefs`"

    .line 480
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 487
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 488
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 483
    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 487
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 488
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 16

    .line 438
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "AppMetadataFts"

    const-string v3, "AppMetadata"

    .line 439
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 441
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v6, "LocalizedFile"

    .line 442
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "localizedicon"

    .line 443
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "Version"

    .line 445
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "highestversion"

    .line 446
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 448
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "RepositoryPreferences"

    .line 449
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "AppPrefs"

    .line 450
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "preferredrepo"

    .line 451
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "CoreRepository"

    const-string v4, "Mirror"

    const-string v5, "AntiFeature"

    const-string v6, "Category"

    const-string v7, "ReleaseChannel"

    const-string v8, "RepositoryPreferences"

    const-string v9, "AppMetadata"

    const-string v10, "AppMetadataFts"

    const-string v11, "LocalizedFile"

    const-string v12, "LocalizedFileList"

    const-string v13, "Version"

    const-string v14, "VersionedString"

    const-string v15, "AppPrefs"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 43
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lorg/fdroid/database/FDroidDatabaseInt_Impl$1;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lorg/fdroid/database/FDroidDatabaseInt_Impl$1;-><init>(Lorg/fdroid/database/FDroidDatabaseInt_Impl;I)V

    const-string v2, "6ac1d35b688d1875f864d1586821f381"

    const-string v3, "17a33f8b59a82cd5682b4eae6b07ea50"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 431
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAppDao()Lorg/fdroid/database/AppDao;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->getAppDao()Lorg/fdroid/database/AppDaoInt;

    move-result-object v0

    return-object v0
.end method

.method public getAppDao()Lorg/fdroid/database/AppDaoInt;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appDaoInt:Lorg/fdroid/database/AppDaoInt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appDaoInt:Lorg/fdroid/database/AppDaoInt;

    return-object v0

    .line 542
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appDaoInt:Lorg/fdroid/database/AppDaoInt;

    if-nez v0, :cond_1

    .line 544
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl;

    invoke-direct {v0, p0}, Lorg/fdroid/database/AppDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appDaoInt:Lorg/fdroid/database/AppDaoInt;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appDaoInt:Lorg/fdroid/database/AppDaoInt;

    .line 546
    monitor-exit p0

    return-object v0

    .line 547
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDaoInt;

    move-result-object v0

    return-object v0
.end method

.method public getAppPrefsDao()Lorg/fdroid/database/AppPrefsDaoInt;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appPrefsDaoInt:Lorg/fdroid/database/AppPrefsDaoInt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appPrefsDaoInt:Lorg/fdroid/database/AppPrefsDaoInt;

    return-object v0

    .line 570
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appPrefsDaoInt:Lorg/fdroid/database/AppPrefsDaoInt;

    if-nez v0, :cond_1

    .line 572
    new-instance v0, Lorg/fdroid/database/AppPrefsDaoInt_Impl;

    invoke-direct {v0, p0}, Lorg/fdroid/database/AppPrefsDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appPrefsDaoInt:Lorg/fdroid/database/AppPrefsDaoInt;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_appPrefsDaoInt:Lorg/fdroid/database/AppPrefsDaoInt;

    .line 574
    monitor-exit p0

    return-object v0

    .line 575
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 516
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    new-instance v0, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_1_2_Impl;

    invoke-direct {v0}, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_1_2_Impl;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v0, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_3_4_Impl;

    invoke-direct {v0}, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_3_4_Impl;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v0, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_4_5_Impl;

    invoke-direct {v0}, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_4_5_Impl;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bridge synthetic getRepositoryDao()Lorg/fdroid/database/RepositoryDao;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v0

    return-object v0
.end method

.method public getRepositoryDao()Lorg/fdroid/database/RepositoryDaoInt;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_repositoryDaoInt:Lorg/fdroid/database/RepositoryDaoInt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_repositoryDaoInt:Lorg/fdroid/database/RepositoryDaoInt;

    return-object v0

    .line 528
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_repositoryDaoInt:Lorg/fdroid/database/RepositoryDaoInt;

    if-nez v0, :cond_1

    .line 530
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt_Impl;

    invoke-direct {v0, p0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_repositoryDaoInt:Lorg/fdroid/database/RepositoryDaoInt;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_repositoryDaoInt:Lorg/fdroid/database/RepositoryDaoInt;

    .line 532
    monitor-exit p0

    return-object v0

    .line 533
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lorg/fdroid/database/RepositoryDaoInt;

    .line 498
    invoke-static {}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lorg/fdroid/database/AppDaoInt;

    .line 499
    invoke-static {}, Lorg/fdroid/database/AppDaoInt_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lorg/fdroid/database/VersionDaoInt;

    .line 500
    invoke-static {}, Lorg/fdroid/database/VersionDaoInt_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lorg/fdroid/database/AppPrefsDaoInt;

    .line 501
    invoke-static {}, Lorg/fdroid/database/AppPrefsDaoInt_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getVersionDao()Lorg/fdroid/database/VersionDao;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->getVersionDao()Lorg/fdroid/database/VersionDaoInt;

    move-result-object v0

    return-object v0
.end method

.method public getVersionDao()Lorg/fdroid/database/VersionDaoInt;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_versionDaoInt:Lorg/fdroid/database/VersionDaoInt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_versionDaoInt:Lorg/fdroid/database/VersionDaoInt;

    return-object v0

    .line 556
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_versionDaoInt:Lorg/fdroid/database/VersionDaoInt;

    if-nez v0, :cond_1

    .line 558
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl;

    invoke-direct {v0, p0}, Lorg/fdroid/database/VersionDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_versionDaoInt:Lorg/fdroid/database/VersionDaoInt;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_Impl;->_versionDaoInt:Lorg/fdroid/database/VersionDaoInt;

    .line 560
    monitor-exit p0

    return-object v0

    .line 561
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
