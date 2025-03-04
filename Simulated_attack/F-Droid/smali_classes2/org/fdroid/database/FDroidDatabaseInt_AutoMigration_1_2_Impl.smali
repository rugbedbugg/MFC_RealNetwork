.class final Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_1_2_Impl;
.super Landroidx/room/migration/Migration;
.source "FDroidDatabaseInt_AutoMigration_1_2_Impl.java"


# instance fields
.field private final callback:Landroidx/room/migration/AutoMigrationSpec;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 17
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 14
    new-instance v0, Lorg/fdroid/database/MultiRepoMigration;

    invoke-direct {v0}, Lorg/fdroid/database/MultiRepoMigration;-><init>()V

    iput-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_1_2_Impl;->callback:Landroidx/room/migration/AutoMigrationSpec;

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP VIEW LocalizedIcon"

    .line 22
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW HighestVersion"

    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `AppPrefs` ADD COLUMN `preferredRepoId` INTEGER DEFAULT NULL"

    .line 24
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW `LocalizedIcon` AS SELECT * FROM LocalizedFile WHERE type=\'icon\'"

    .line 25
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW `HighestVersion` AS SELECT repoId, packageName, antiFeatures FROM Version\n    GROUP BY repoId, packageName HAVING MAX(manifest_versionCode)"

    .line 26
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW `PreferredRepo` AS SELECT packageName, repoId AS preferredRepoId FROM AppMetadata\n    JOIN RepositoryPreferences AS pref USING (repoId)\n    LEFT JOIN AppPrefs USING (packageName)\n    WHERE repoId = COALESCE(preferredRepoId, repoId)\n    GROUP BY packageName HAVING MAX(pref.weight)"

    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_1_2_Impl;->callback:Landroidx/room/migration/AutoMigrationSpec;

    .line 33
    invoke-interface {v0, p1}, Landroidx/room/migration/AutoMigrationSpec;->onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method
