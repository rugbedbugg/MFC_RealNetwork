.class Lorg/fdroid/database/AppPrefsDaoInt_Impl$2;
.super Ljava/lang/Object;
.source "AppPrefsDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppPrefsDaoInt_Impl;->getLiveAppPrefs(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppPrefsDaoInt_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppPrefsDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/AppPrefsDaoInt_Impl$2;->this$0:Lorg/fdroid/database/AppPrefsDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/AppPrefsDaoInt_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/fdroid/database/AppPrefsDaoInt_Impl$2;->call()Lorg/fdroid/database/AppPrefs;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/fdroid/database/AppPrefs;
    .locals 12

    iget-object v0, p0, Lorg/fdroid/database/AppPrefsDaoInt_Impl$2;->this$0:Lorg/fdroid/database/AppPrefsDaoInt_Impl;

    .line 94
    invoke-static {v0}, Lorg/fdroid/database/AppPrefsDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppPrefsDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/database/AppPrefsDaoInt_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "packageName"

    .line 96
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "ignoreVersionCodeUpdate"

    .line 97
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "preferredRepoId"

    .line 98
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "appPrefReleaseChannels"

    .line 99
    invoke-static {v0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v7, v3

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 109
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 111
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v10, v3

    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v10, v1

    .line 118
    :goto_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 121
    :cond_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    :goto_2
    sget-object v1, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v1, v3}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 124
    new-instance v3, Lorg/fdroid/database/AppPrefs;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lorg/fdroid/database/AppPrefs;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    .line 130
    :cond_3
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    throw v1
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppPrefsDaoInt_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 136
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
