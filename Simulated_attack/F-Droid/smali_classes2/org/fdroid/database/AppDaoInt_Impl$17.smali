.class Lorg/fdroid/database/AppDaoInt_Impl$17;
.super Ljava/lang/Object;
.source "AppDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt_Impl;->getAppOverviewItems(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/AppDaoInt_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl$17;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 1738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lorg/fdroid/database/AppDaoInt_Impl$17;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$17;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1742
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$17;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1744
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1754
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1755
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1757
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    goto :goto_1

    .line 1760
    :cond_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    .line 1763
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1764
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_2
    const/4 v5, -0x1

    .line 1768
    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v5, v1, Lorg/fdroid/database/AppDaoInt_Impl$17;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1769
    invoke-static {v5, v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$m__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)V

    .line 1770
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1771
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    .line 1774
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1776
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v10, v3

    goto :goto_3

    .line 1779
    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    :goto_3
    const/4 v7, 0x2

    .line 1782
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v7, 0x3

    .line 1784
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v7, 0x4

    .line 1786
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v3

    goto :goto_4

    .line 1789
    :cond_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    :goto_4
    const/4 v7, 0x5

    .line 1792
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v16, v3

    goto :goto_5

    .line 1795
    :cond_5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    :goto_5
    const/4 v7, 0x6

    .line 1799
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object v7, v3

    goto :goto_6

    .line 1802
    :cond_6
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1804
    :goto_6
    sget-object v3, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v3, v7}, Lorg/fdroid/database/Converters;->fromStringToMapOfLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    const/4 v3, 0x7

    .line 1807
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v19, v4

    goto :goto_7

    :cond_7
    move/from16 v19, v6

    .line 1811
    :goto_7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    .line 1814
    :cond_8
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_8
    if-eqz v3, :cond_9

    .line 1817
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :goto_9
    move-object/from16 v18, v3

    goto :goto_a

    .line 1819
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    .line 1821
    :goto_a
    new-instance v3, Lorg/fdroid/database/AppOverviewItem;

    move-object v7, v3

    invoke-direct/range {v7 .. v19}, Lorg/fdroid/database/AppOverviewItem;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    .line 1822
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_a
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$17;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1824
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1827
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$17;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1830
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_c

    .line 1827
    :goto_b
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1828
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_c
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl$17;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1830
    invoke-static {v2}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1831
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 1836
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
