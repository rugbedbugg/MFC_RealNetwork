.class Lorg/fdroid/database/RepositoryDaoInt_Impl$29;
.super Ljava/lang/Object;
.source "RepositoryDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/RepositoryDaoInt_Impl;->getLiveRepositories()Landroidx/lifecycle/LiveData;
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

    iput-object p1, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1786
    invoke-virtual {p0}, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 33

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1790
    invoke-static {v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/RepositoryDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1792
    invoke-static {v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/RepositoryDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1805
    :try_start_1
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1806
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1807
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1808
    new-instance v7, Landroidx/collection/LongSparseArray;

    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1809
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1810
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 1812
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1813
    invoke-virtual {v0, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1814
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 1817
    :cond_0
    :goto_1
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1818
    invoke-virtual {v5, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1819
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1822
    :cond_1
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1823
    invoke-virtual {v6, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1824
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1827
    :cond_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1828
    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1829
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1832
    :cond_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1833
    invoke-virtual {v8, v9, v10, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v9, -0x1

    .line 1835
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v9, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1836
    invoke-static {v9, v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$m__fetchRelationshipMirrorAsorgFdroidDatabaseMirror(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V

    iget-object v9, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1837
    invoke-static {v9, v5}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$m__fetchRelationshipAntiFeatureAsorgFdroidDatabaseAntiFeature(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V

    iget-object v9, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1838
    invoke-static {v9, v6}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$m__fetchRelationshipCategoryAsorgFdroidDatabaseCategory(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V

    iget-object v9, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1839
    invoke-static {v9, v7}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$m__fetchRelationshipReleaseChannelAsorgFdroidDatabaseReleaseChannel(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V

    iget-object v9, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1840
    invoke-static {v9, v8}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$m__fetchRelationshipRepositoryPreferencesAsorgFdroidDatabaseRepositoryPreferences(Lorg/fdroid/database/RepositoryDaoInt_Impl;Landroidx/collection/LongSparseArray;)V

    .line 1841
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1842
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1846
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1849
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v4

    goto :goto_3

    .line 1852
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1854
    :goto_3
    sget-object v12, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v12, v11}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    const/4 v11, 0x2

    .line 1857
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object v11, v4

    goto :goto_4

    .line 1860
    :cond_6
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1862
    :goto_4
    invoke-virtual {v12, v11}, Lorg/fdroid/database/Converters;->fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    const/4 v11, 0x3

    .line 1864
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v17, v4

    goto :goto_5

    .line 1867
    :cond_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    :goto_5
    const/4 v11, 0x4

    .line 1870
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v18, v4

    goto :goto_6

    .line 1873
    :cond_8
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    :goto_6
    const/4 v11, 0x5

    .line 1876
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/4 v11, 0x6

    .line 1878
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v21, v4

    goto :goto_7

    .line 1881
    :cond_9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v21, v11

    :goto_7
    const/4 v11, 0x7

    .line 1884
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v22, v4

    goto :goto_8

    :cond_a
    iget-object v3, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1887
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$m__IndexFormatVersion_stringToEnum(Lorg/fdroid/database/RepositoryDaoInt_Impl;Ljava/lang/String;)Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v3

    move-object/from16 v22, v3

    :goto_8
    const/16 v3, 0x8

    .line 1890
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v23, v4

    goto :goto_9

    .line 1893
    :cond_b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_9
    const/16 v3, 0x9

    .line 1897
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object v3, v4

    goto :goto_a

    .line 1900
    :cond_c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1902
    :goto_a
    invoke-virtual {v12, v3}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v24

    const/16 v3, 0xa

    .line 1904
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v25, v4

    goto :goto_b

    .line 1907
    :cond_d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    .line 1909
    :goto_b
    new-instance v27, Lorg/fdroid/database/CoreRepository;

    move-object/from16 v12, v27

    invoke-direct/range {v12 .. v25}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    .line 1912
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1913
    invoke-virtual {v0, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Ljava/util/ArrayList;

    .line 1916
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1917
    invoke-virtual {v5, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Ljava/util/ArrayList;

    .line 1920
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1921
    invoke-virtual {v6, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Ljava/util/ArrayList;

    .line 1924
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1925
    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Ljava/util/ArrayList;

    .line 1928
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1929
    invoke-virtual {v8, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Lorg/fdroid/database/RepositoryPreferences;

    .line 1930
    new-instance v3, Lorg/fdroid/database/Repository;

    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v32}, Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V

    .line 1931
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_e
    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1933
    invoke-static {v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/RepositoryDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1936
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1939
    invoke-static {v0}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/RepositoryDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v9

    :catchall_1
    move-exception v0

    goto :goto_d

    .line 1936
    :goto_c
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1937
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_d
    iget-object v2, v1, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->this$0:Lorg/fdroid/database/RepositoryDaoInt_Impl;

    .line 1939
    invoke-static {v2}, Lorg/fdroid/database/RepositoryDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/RepositoryDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1940
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/RepositoryDaoInt_Impl$29;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 1945
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
