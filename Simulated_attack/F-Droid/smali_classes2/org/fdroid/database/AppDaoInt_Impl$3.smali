.class Lorg/fdroid/database/AppDaoInt_Impl$3;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl$3;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 274
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p2, Lorg/fdroid/database/LocalizedFileList;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/LocalizedFileList;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/LocalizedFileList;)V
    .locals 4

    .line 284
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 285
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 286
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 290
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 291
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 295
    :goto_1
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getLocale()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 296
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 298
    :cond_2
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 300
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 301
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 303
    :cond_3
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 305
    :goto_3
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getSha256()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 306
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 308
    :cond_4
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getSha256()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 310
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getSize()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 311
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 313
    :cond_5
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 315
    :goto_5
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 316
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 318
    :cond_6
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFileList;->getIpfsCidV1()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `LocalizedFileList` (`repoId`,`packageName`,`type`,`locale`,`name`,`sha256`,`size`,`ipfsCidV1`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
