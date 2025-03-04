.class Lorg/fdroid/database/VersionDaoInt_Impl$8;
.super Ljava/lang/Object;
.source "VersionDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt_Impl;->getAppVersions(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl$8;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lorg/fdroid/database/VersionDaoInt_Impl$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 31

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$8;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 628
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$8;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 630
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lorg/fdroid/database/VersionDaoInt_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 657
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 658
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    .line 660
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_1

    .line 663
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    .line 666
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 667
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1f

    :cond_2
    const/4 v5, -0x1

    .line 671
    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v5, v1, Lorg/fdroid/database/VersionDaoInt_Impl$8;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 672
    invoke-static {v5, v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$m__fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/collection/ArrayMap;)V

    .line 673
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 674
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1f

    const/4 v7, 0x0

    .line 678
    :try_start_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 680
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v11, v4

    goto :goto_3

    .line 683
    :cond_3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    .line 686
    :goto_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v12, v4

    goto :goto_4

    .line 689
    :cond_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    :goto_4
    const/4 v8, 0x3

    .line 692
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v8, 0x4

    .line 695
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v8, v4

    goto :goto_5

    .line 698
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 700
    :goto_5
    sget-object v15, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v15, v8}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    const/4 v8, 0x5

    .line 703
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object v8, v4

    goto :goto_6

    .line 706
    :cond_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 708
    :goto_6
    invoke-virtual {v15, v8}, Lorg/fdroid/database/Converters;->fromStringToMapOfLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v19

    const/4 v8, 0x6

    .line 711
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object v8, v4

    goto :goto_7

    .line 714
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 716
    :goto_7
    invoke-virtual {v15, v8}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    const/4 v8, 0x7

    .line 719
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_8

    move/from16 v21, v3

    goto :goto_8

    :cond_8
    move/from16 v21, v7

    :goto_8
    const/16 v8, 0x8

    .line 723
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object v8, v4

    goto :goto_9

    .line 726
    :cond_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_9
    const/16 v3, 0x9

    .line 729
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object v3, v4

    goto :goto_a

    .line 732
    :cond_a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_a
    const/16 v4, 0xa

    .line 735
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    const/4 v4, 0x0

    goto :goto_b

    .line 738
    :cond_b
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_b
    const/16 v7, 0xb

    .line 741
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v7, 0x0

    goto :goto_c

    .line 744
    :cond_c
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 746
    :goto_c
    new-instance v6, Lorg/fdroid/index/v2/FileV1;

    invoke-direct {v6, v8, v3, v4, v7}, Lorg/fdroid/index/v2/FileV1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    const/16 v3, 0xc

    .line 748
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v3, 0xd

    if-eqz v4, :cond_d

    :try_start_3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_e

    :cond_d
    const/16 v4, 0xc

    goto :goto_d

    :cond_e
    const/4 v1, 0x0

    goto :goto_12

    .line 750
    :goto_d
    :try_start_4
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    const/4 v4, 0x0

    goto :goto_e

    .line 753
    :cond_f
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 756
    :goto_e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v3, 0x0

    goto :goto_f

    .line 759
    :cond_10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    :goto_f
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    const/4 v8, 0x0

    goto :goto_10

    .line 765
    :cond_11
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 768
    :goto_10
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_12

    const/4 v7, 0x0

    goto :goto_11

    .line 771
    :cond_12
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 773
    :goto_11
    new-instance v1, Lorg/fdroid/index/v2/FileV2;

    invoke-direct {v1, v4, v3, v8, v7}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    :goto_12
    const/16 v3, 0x10

    .line 779
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v23, 0x0

    goto :goto_13

    .line 782
    :cond_13
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_13
    const/16 v3, 0x11

    .line 785
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/16 v3, 0x12

    .line 787
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v27, 0x0

    goto :goto_14

    .line 790
    :cond_14
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_14
    const/16 v3, 0x13

    .line 794
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v3, 0x0

    goto :goto_15

    .line 797
    :cond_15
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 799
    :goto_15
    invoke-virtual {v15, v3}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    const/16 v3, 0x14

    .line 802
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v3, 0x0

    goto :goto_16

    .line 805
    :cond_16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 807
    :goto_16
    invoke-virtual {v15, v3}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v30

    const/16 v3, 0x15

    .line 809
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const/16 v7, 0x16

    if-eqz v4, :cond_18

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_17

    :cond_17
    const/16 v26, 0x0

    goto :goto_18

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_1f

    .line 811
    :cond_18
    :goto_17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 813
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 814
    new-instance v7, Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-direct {v7, v3, v4}, Lorg/fdroid/index/v2/UsesSdkV2;-><init>(II)V

    move-object/from16 v26, v7

    :goto_18
    const/16 v3, 0x17

    .line 819
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x18

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_19

    :cond_19
    const/16 v28, 0x0

    goto :goto_1c

    .line 822
    :cond_1a
    :goto_19
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v3, 0x0

    goto :goto_1a

    .line 825
    :cond_1b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 827
    :goto_1a
    invoke-virtual {v15, v3}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x18

    .line 830
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v7, 0x1

    goto :goto_1b

    :cond_1c
    const/4 v7, 0x0

    .line 832
    :goto_1b
    new-instance v4, Lorg/fdroid/index/v2/SignerV2;

    invoke-direct {v4, v3, v7}, Lorg/fdroid/index/v2/SignerV2;-><init>(Ljava/util/List;Z)V

    move-object/from16 v28, v4

    .line 836
    :goto_1c
    new-instance v17, Lorg/fdroid/database/AppManifest;

    move-object/from16 v22, v17

    invoke-direct/range {v22 .. v30}, Lorg/fdroid/database/AppManifest;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V

    .line 837
    new-instance v3, Lorg/fdroid/database/Version;

    move-object v8, v3

    move-object v15, v6

    move-object/from16 v16, v1

    invoke-direct/range {v8 .. v21}, Lorg/fdroid/database/Version;-><init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    const/4 v1, 0x2

    .line 840
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x0

    goto :goto_1d

    .line 843
    :cond_1d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1d
    if-eqz v4, :cond_1e

    .line 846
    invoke-virtual {v0, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_1e

    .line 848
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 850
    :goto_1e
    new-instance v6, Lorg/fdroid/database/AppVersion;

    invoke-direct {v6, v3, v4}, Lorg/fdroid/database/AppVersion;-><init>(Lorg/fdroid/database/Version;Ljava/util/List;)V

    .line 851
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v1

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_1f
    :try_start_5
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$8;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 853
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 856
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$8;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 859
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v5

    :catchall_2
    move-exception v0

    goto :goto_20

    .line 856
    :goto_1f
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 857
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_20
    iget-object v2, v1, Lorg/fdroid/database/VersionDaoInt_Impl$8;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 859
    invoke-static {v2}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 860
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 865
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
