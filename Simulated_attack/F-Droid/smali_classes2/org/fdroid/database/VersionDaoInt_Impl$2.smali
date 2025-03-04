.class Lorg/fdroid/database/VersionDaoInt_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "VersionDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/VersionDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl$2;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 205
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p2, Lorg/fdroid/database/VersionedString;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/VersionDaoInt_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/VersionedString;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/VersionedString;)V
    .locals 4

    .line 215
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 216
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 217
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 221
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getVersionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 222
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl$2;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 226
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getType()Lorg/fdroid/database/VersionedStringType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$m__VersionedStringType_enumToString(Lorg/fdroid/database/VersionDaoInt_Impl;Lorg/fdroid/database/VersionedStringType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 228
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 230
    :cond_2
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 232
    :goto_2
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 233
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 235
    :cond_3
    invoke-virtual {p2}, Lorg/fdroid/database/VersionedString;->getVersion()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_3
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `VersionedString` (`repoId`,`packageName`,`versionId`,`type`,`name`,`version`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
