.class Lorg/fdroid/database/RepositoryDaoInt_Impl$6;
.super Landroidx/room/EntityInsertionAdapter;
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

    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$6;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 307
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p2, Lorg/fdroid/database/ReleaseChannel;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt_Impl$6;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/ReleaseChannel;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/ReleaseChannel;)V
    .locals 3

    .line 317
    invoke-virtual {p2}, Lorg/fdroid/database/ReleaseChannel;->getRepoId$database_release()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 318
    invoke-virtual {p2}, Lorg/fdroid/database/ReleaseChannel;->getId$database_release()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 319
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/ReleaseChannel;->getId$database_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 323
    :goto_0
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {p2}, Lorg/fdroid/database/ReleaseChannel;->getIcon()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedFileV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    .line 325
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 327
    :cond_1
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 329
    :goto_1
    invoke-virtual {p2}, Lorg/fdroid/database/ReleaseChannel;->getName$database_release()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-nez v1, :cond_2

    .line 331
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 333
    :cond_2
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 335
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/ReleaseChannel;->getDescription$database_release()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/fdroid/database/Converters;->localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    if-nez p2, :cond_3

    .line 337
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 339
    :cond_3
    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `ReleaseChannel` (`repoId`,`id`,`icon`,`name`,`description`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
