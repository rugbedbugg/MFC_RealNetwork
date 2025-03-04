.class Lorg/fdroid/database/RepositoryDaoInt_Impl$3;
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

    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$3;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 212
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p2, Lorg/fdroid/database/Mirror;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/Mirror;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/fdroid/database/Mirror;)V
    .locals 3

    .line 222
    invoke-virtual {p2}, Lorg/fdroid/database/Mirror;->getRepoId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 223
    invoke-virtual {p2}, Lorg/fdroid/database/Mirror;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 224
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p2}, Lorg/fdroid/database/Mirror;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 228
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/database/Mirror;->getLocation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 229
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {p2}, Lorg/fdroid/database/Mirror;->getLocation()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "INSERT OR REPLACE INTO `Mirror` (`repoId`,`url`,`location`) VALUES (?,?,?)"

    return-object v0
.end method
