.class Lorg/fdroid/database/RepositoryDaoInt_Impl$30;
.super Ljava/lang/Object;
.source "RepositoryDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/RepositoryDaoInt_Impl;->getLiveCategories()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1957
    invoke-virtual {p0}, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1961
    invoke-static {v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/RepositoryDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 1968
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1969
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1972
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v4, 0x1

    .line 1974
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v8, v3

    goto :goto_1

    .line 1977
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    :goto_1
    const/4 v4, 0x2

    .line 1981
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v3

    goto :goto_2

    .line 1984
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1986
    :goto_2
    sget-object v5, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v5, v4}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    const/4 v4, 0x3

    .line 1989
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v4, v3

    goto :goto_3

    .line 1992
    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1994
    :goto_3
    invoke-virtual {v5, v4}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    const/4 v4, 0x4

    .line 1997
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v4, v3

    goto :goto_4

    .line 2000
    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2002
    :goto_4
    invoke-virtual {v5, v4}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 2003
    new-instance v4, Lorg/fdroid/database/Category;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lorg/fdroid/database/Category;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 2004
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    .line 2008
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2009
    throw v1
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$30;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 2014
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
