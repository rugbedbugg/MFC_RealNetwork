.class Lorg/fdroid/database/RepositoryDaoInt_Impl$8;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "RepositoryDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/RepositoryDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$8;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 406
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 406
    check-cast p2, Lorg/fdroid/database/RepositoryPreferences;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt_Impl$8;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/RepositoryPreferences;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/RepositoryPreferences;)V
    .locals 4

    .line 416
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getRepoId$database_release()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 417
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getWeight()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 418
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getEnabled()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 419
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 420
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getLastUpdated()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 421
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getLastUpdated()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 425
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getLastETag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 426
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 428
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getLastETag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 430
    :goto_1
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getUserMirrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_2

    .line 432
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 434
    :cond_2
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 436
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getDisabledMirrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->listStringToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 438
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 440
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 442
    :goto_3
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 443
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 445
    :cond_4
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 447
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getPassword()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 448
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 450
    :cond_5
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0xa

    .line 452
    invoke-virtual {p2}, Lorg/fdroid/database/RepositoryPreferences;->getRepoId$database_release()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "UPDATE OR ABORT `RepositoryPreferences` SET `repoId` = ?,`weight` = ?,`enabled` = ?,`lastUpdated` = ?,`lastETag` = ?,`userMirrors` = ?,`disabledMirrors` = ?,`username` = ?,`password` = ? WHERE `repoId` = ?"

    return-object v0
.end method
