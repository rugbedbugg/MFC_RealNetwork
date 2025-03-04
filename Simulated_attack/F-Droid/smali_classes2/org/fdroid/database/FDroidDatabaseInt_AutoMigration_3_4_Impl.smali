.class final Lorg/fdroid/database/FDroidDatabaseInt_AutoMigration_3_4_Impl;
.super Landroidx/room/migration/Migration;
.source "FDroidDatabaseInt_AutoMigration_3_4_Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 14
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP VIEW LocalizedIcon"

    .line 19
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW HighestVersion"

    .line 20
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW PreferredRepo"

    .line 21
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `_new_CoreRepository` (`repoId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `icon` TEXT, `address` TEXT NOT NULL, `webBaseUrl` TEXT, `timestamp` INTEGER NOT NULL, `version` INTEGER, `formatVersion` TEXT, `maxAge` INTEGER, `description` TEXT NOT NULL, `certificate` TEXT NOT NULL)"

    .line 22
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `_new_CoreRepository` (`repoId`,`name`,`icon`,`address`,`webBaseUrl`,`timestamp`,`version`,`formatVersion`,`maxAge`,`description`,`certificate`) SELECT `repoId`,`name`,`icon`,`address`,`webBaseUrl`,`timestamp`,`version`,`formatVersion`,`maxAge`,`description`,`certificate` FROM `CoreRepository`"

    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `CoreRepository`"

    .line 24
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `_new_CoreRepository` RENAME TO `CoreRepository`"

    .line 25
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW `LocalizedIcon` AS SELECT * FROM LocalizedFile WHERE type=\'icon\'"

    .line 26
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW `HighestVersion` AS SELECT repoId, packageName, antiFeatures FROM Version\n    GROUP BY repoId, packageName HAVING MAX(manifest_versionCode)"

    .line 27
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW `PreferredRepo` AS SELECT packageName, repoId AS preferredRepoId FROM AppMetadata\n    JOIN RepositoryPreferences AS pref USING (repoId)\n    LEFT JOIN AppPrefs USING (packageName)\n    WHERE repoId = COALESCE(preferredRepoId, repoId)\n    GROUP BY packageName HAVING MAX(pref.weight)"

    .line 29
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
