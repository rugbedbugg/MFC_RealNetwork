.class Lorg/fdroid/database/AppDaoInt_Impl$27;
.super Ljava/lang/Object;
.source "AppDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt_Impl;->getAppListItemsByLastUpdated(J)Landroidx/lifecycle/LiveData;
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

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl$27;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl$27;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 3687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 3687
    invoke-virtual {p0}, Lorg/fdroid/database/AppDaoInt_Impl$27;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$27;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 3691
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$27;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 3693
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl$27;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3703
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 3704
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3706
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    goto :goto_1

    .line 3709
    :cond_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    .line 3712
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3713
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_2
    const/4 v5, -0x1

    .line 3717
    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v5, v1, Lorg/fdroid/database/AppDaoInt_Impl$27;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 3718
    invoke-static {v5, v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$m__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)V

    .line 3719
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3720
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    .line 3723
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3725
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v10, v3

    goto :goto_3

    .line 3728
    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    :goto_3
    const/4 v7, 0x2

    .line 3731
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v3

    goto :goto_4

    .line 3734
    :cond_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    :goto_4
    const/4 v7, 0x3

    .line 3737
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v3

    goto :goto_5

    .line 3740
    :cond_5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    :goto_5
    const/4 v7, 0x4

    .line 3743
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v7, 0x5

    .line 3745
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v3

    goto :goto_6

    .line 3748
    :cond_6
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    :goto_6
    const/4 v7, 0x6

    .line 3752
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_7

    move/from16 v17, v4

    goto :goto_7

    :cond_7
    move/from16 v17, v6

    :goto_7
    const/4 v6, 0x7

    .line 3755
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object/from16 v18, v3

    goto :goto_8

    .line 3758
    :cond_8
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    .line 3762
    :goto_8
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v3

    goto :goto_9

    .line 3765
    :cond_9
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_9
    if-eqz v6, :cond_a

    .line 3768
    invoke-virtual {v0, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    :goto_a
    move-object/from16 v16, v6

    goto :goto_b

    .line 3770
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a

    .line 3772
    :goto_b
    new-instance v6, Lorg/fdroid/database/AppListItem;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v20}, Lorg/fdroid/database/AppListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3773
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$27;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 3775
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3778
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$27;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 3781
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_d

    .line 3778
    :goto_c
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3779
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_d
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl$27;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 3781
    invoke-static {v2}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 3782
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl$27;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 3787
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
