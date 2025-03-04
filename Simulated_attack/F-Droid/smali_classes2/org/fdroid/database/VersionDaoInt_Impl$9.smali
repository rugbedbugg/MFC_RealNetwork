.class Lorg/fdroid/database/VersionDaoInt_Impl$9;
.super Ljava/lang/Object;
.source "VersionDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt_Impl;->getAppVersions(JLjava/lang/String;)Landroidx/lifecycle/LiveData;
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

    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl$9;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 885
    invoke-virtual {p0}, Lorg/fdroid/database/VersionDaoInt_Impl$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 60

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$9;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 889
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$9;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 891
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lorg/fdroid/database/VersionDaoInt_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "repoId"

    .line 893
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "packageName"

    .line 894
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "versionId"

    .line 895
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "added"

    .line 896
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "releaseChannels"

    .line 897
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "antiFeatures"

    .line 898
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "whatsNew"

    .line 899
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "isCompatible"

    .line 900
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "file_name"

    .line 901
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "file_sha256"

    .line 902
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_size"

    .line 903
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "file_ipfsCidV1"

    .line 904
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "src_name"

    .line 905
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "src_sha256"

    .line 906
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "src_size"

    .line 907
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "src_ipfsCidV1"

    .line 908
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "manifest_versionName"

    .line 909
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "manifest_versionCode"

    .line 910
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "manifest_maxSdkVersion"

    .line 911
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "manifest_nativecode"

    .line 912
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "manifest_features"

    .line 913
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "manifest_usesSdk_minSdkVersion"

    .line 914
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "manifest_usesSdk_targetSdkVersion"

    .line 915
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "manifest_signer_sha256"

    .line 916
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "manifest_signer_hasMultipleSigners"

    .line 917
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    .line 918
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 919
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 921
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_0

    move/from16 v29, v3

    const/4 v3, 0x0

    goto :goto_1

    .line 924
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v29, v3

    move-object/from16 v3, v28

    :goto_1
    if-eqz v3, :cond_1

    .line 927
    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    move/from16 v28, v15

    .line 928
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_24

    :cond_1
    move/from16 v28, v15

    :goto_2
    move/from16 v15, v28

    move/from16 v3, v29

    goto :goto_0

    :cond_2
    move/from16 v29, v3

    move/from16 v28, v15

    const/4 v3, -0x1

    .line 932
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v3, v1, Lorg/fdroid/database/VersionDaoInt_Impl$9;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 933
    invoke-static {v3, v4}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$m__fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/collection/ArrayMap;)V

    .line 934
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 935
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_21

    .line 939
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 941
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v33, 0x0

    goto :goto_4

    .line 944
    :cond_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v33, v15

    .line 947
    :goto_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v34, 0x0

    goto :goto_5

    .line 950
    :cond_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v34, v15

    .line 953
    :goto_5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 956
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move/from16 v44, v0

    const/4 v15, 0x0

    goto :goto_6

    .line 959
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v44, v0

    .line 961
    :goto_6
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v0, v15}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v40

    .line 964
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x0

    goto :goto_7

    .line 967
    :cond_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 969
    :goto_7
    invoke-virtual {v0, v15}, Lorg/fdroid/database/Converters;->fromStringToMapOfLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v41

    .line 972
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    goto :goto_8

    .line 975
    :cond_7
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 977
    :goto_8
    invoke-virtual {v0, v15}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v42

    .line 980
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v30, 0x0

    if-eqz v15, :cond_8

    const/16 v43, 0x1

    goto :goto_9

    :cond_8
    move/from16 v43, v30

    .line 984
    :goto_9
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_a

    .line 987
    :cond_9
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 990
    :goto_a
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_a

    move/from16 v45, v5

    const/4 v5, 0x0

    goto :goto_b

    .line 993
    :cond_a
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move/from16 v45, v5

    move-object/from16 v5, v37

    .line 996
    :goto_b
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_b

    move/from16 v46, v7

    const/4 v7, 0x0

    :goto_c
    move/from16 v59, v28

    move/from16 v28, v8

    move/from16 v8, v59

    goto :goto_d

    .line 999
    :cond_b
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move/from16 v46, v7

    move-object/from16 v7, v37

    goto :goto_c

    .line 1002
    :goto_d
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_c

    move/from16 v47, v8

    move/from16 v48, v9

    const/4 v8, 0x0

    goto :goto_e

    .line 1005
    :cond_c
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move/from16 v47, v8

    move/from16 v48, v9

    move-object/from16 v8, v37

    .line 1007
    :goto_e
    new-instance v9, Lorg/fdroid/index/v2/FileV1;

    invoke-direct {v9, v15, v5, v7, v8}, Lorg/fdroid/index/v2/FileV1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move/from16 v5, v29

    .line 1009
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_10

    move/from16 v7, v16

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_f

    move/from16 v8, v17

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_e

    move/from16 v15, v18

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_d

    goto :goto_11

    :cond_d
    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v49, v10

    move/from16 v16, v11

    move/from16 v5, v19

    const/16 v38, 0x0

    goto/16 :goto_16

    :cond_e
    :goto_f
    move/from16 v15, v18

    goto :goto_11

    :cond_f
    :goto_10
    move/from16 v8, v17

    goto :goto_f

    :cond_10
    move/from16 v7, v16

    goto :goto_10

    .line 1011
    :goto_11
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_11

    move/from16 v29, v5

    const/4 v5, 0x0

    goto :goto_12

    .line 1014
    :cond_11
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v29, v5

    move-object/from16 v5, v16

    .line 1017
    :goto_12
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_12

    move/from16 v17, v7

    const/4 v7, 0x0

    goto :goto_13

    .line 1020
    :cond_12
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v7

    move-object/from16 v7, v16

    .line 1023
    :goto_13
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_13

    move/from16 v18, v8

    const/4 v8, 0x0

    goto :goto_14

    .line 1026
    :cond_13
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v18, v8

    move-object/from16 v8, v16

    .line 1029
    :goto_14
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_14

    move/from16 v49, v10

    move/from16 v16, v11

    const/4 v10, 0x0

    goto :goto_15

    .line 1032
    :cond_14
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v49, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    .line 1034
    :goto_15
    new-instance v11, Lorg/fdroid/index/v2/FileV2;

    invoke-direct {v11, v5, v7, v8, v10}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move-object/from16 v38, v11

    move/from16 v5, v19

    .line 1040
    :goto_16
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_15

    move/from16 v7, v20

    const/16 v51, 0x0

    goto :goto_17

    .line 1043
    :cond_15
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v51, v7

    move/from16 v7, v20

    .line 1046
    :goto_17
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v8, v21

    .line 1048
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_16

    move/from16 v10, v22

    const/16 v55, 0x0

    goto :goto_18

    .line 1051
    :cond_16
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v55, v10

    move/from16 v10, v22

    .line 1055
    :goto_18
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_17

    const/4 v11, 0x0

    goto :goto_19

    .line 1058
    :cond_17
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1060
    :goto_19
    invoke-virtual {v0, v11}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move/from16 v11, v23

    .line 1063
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_18

    move/from16 v20, v5

    const/4 v5, 0x0

    goto :goto_1a

    .line 1066
    :cond_18
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v20, v5

    move-object/from16 v5, v19

    .line 1068
    :goto_1a
    invoke-virtual {v0, v5}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v58

    move/from16 v5, v24

    .line 1070
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    move/from16 v19, v7

    move/from16 v7, v25

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_19

    :goto_1b
    move/from16 v21, v8

    goto :goto_1c

    :cond_19
    move/from16 v24, v5

    move/from16 v25, v7

    move/from16 v21, v8

    move/from16 v5, v26

    const/16 v54, 0x0

    goto :goto_1d

    :cond_1a
    move/from16 v19, v7

    move/from16 v7, v25

    goto :goto_1b

    .line 1072
    :goto_1c
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v24, v5

    .line 1074
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v25, v7

    .line 1075
    new-instance v7, Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-direct {v7, v8, v5}, Lorg/fdroid/index/v2/UsesSdkV2;-><init>(II)V

    move-object/from16 v54, v7

    move/from16 v5, v26

    .line 1080
    :goto_1d
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    move/from16 v7, v27

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_1b

    goto :goto_1e

    :cond_1b
    move/from16 v26, v5

    const/16 v56, 0x0

    goto :goto_21

    :cond_1c
    move/from16 v7, v27

    .line 1083
    :goto_1e
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    const/4 v8, 0x0

    goto :goto_1f

    .line 1086
    :cond_1d
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1088
    :goto_1f
    invoke-virtual {v0, v8}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1091
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v26, v5

    if-eqz v8, :cond_1e

    const/4 v8, 0x1

    goto :goto_20

    :cond_1e
    move/from16 v8, v30

    .line 1093
    :goto_20
    new-instance v5, Lorg/fdroid/index/v2/SignerV2;

    invoke-direct {v5, v0, v8}, Lorg/fdroid/index/v2/SignerV2;-><init>(Ljava/util/List;Z)V

    move-object/from16 v56, v5

    .line 1097
    :goto_21
    new-instance v39, Lorg/fdroid/database/AppManifest;

    move-object/from16 v50, v39

    invoke-direct/range {v50 .. v58}, Lorg/fdroid/database/AppManifest;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V

    .line 1098
    new-instance v0, Lorg/fdroid/database/Version;

    move-object/from16 v30, v0

    move-object/from16 v37, v9

    invoke-direct/range {v30 .. v43}, Lorg/fdroid/database/Version;-><init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 1101
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x0

    goto :goto_22

    .line 1104
    :cond_1f
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_22
    if-eqz v5, :cond_20

    .line 1107
    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    goto :goto_23

    .line 1109
    :cond_20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    :goto_23
    new-instance v8, Lorg/fdroid/database/AppVersion;

    invoke-direct {v8, v0, v5}, Lorg/fdroid/database/AppVersion;-><init>(Lorg/fdroid/database/Version;Ljava/util/List;)V

    .line 1112
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v27, v7

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v11, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v8, v28

    move/from16 v0, v44

    move/from16 v5, v45

    move/from16 v7, v46

    move/from16 v28, v47

    move/from16 v9, v48

    move/from16 v10, v49

    move/from16 v18, v15

    move/from16 v59, v20

    move/from16 v20, v19

    move/from16 v19, v59

    goto/16 :goto_3

    :cond_21
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$9;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 1114
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl$9;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 1120
    invoke-static {v0}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_25

    .line 1117
    :goto_24
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1118
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_25
    iget-object v2, v1, Lorg/fdroid/database/VersionDaoInt_Impl$9;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 1120
    invoke-static {v2}, Lorg/fdroid/database/VersionDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1121
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl$9;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 1126
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
