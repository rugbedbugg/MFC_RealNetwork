.class Lorg/fdroid/database/AppDaoInt_Impl$2;
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

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl$2;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 226
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 226
    check-cast p2, Lorg/fdroid/database/LocalizedFile;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/LocalizedFile;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/LocalizedFile;)V
    .locals 4

    .line 236
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 237
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 238
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 242
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 243
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 247
    :goto_1
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getLocale()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 248
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 252
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 253
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 255
    :cond_3
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 257
    :goto_3
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getSha256()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 258
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 260
    :cond_4
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getSha256()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 262
    :goto_4
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getSize()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 263
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 265
    :cond_5
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 267
    :goto_5
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 268
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 270
    :cond_6
    invoke-virtual {p2}, Lorg/fdroid/database/LocalizedFile;->getIpfsCidV1()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `LocalizedFile` (`repoId`,`packageName`,`type`,`locale`,`name`,`sha256`,`size`,`ipfsCidV1`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
