.class Lorg/fdroid/database/AppDaoInt_Impl$15;
.super Ljava/lang/Object;
.source "AppDaoInt_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt_Impl;->getApp(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    iput-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl$15;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 965
    invoke-virtual {p0}, Lorg/fdroid/database/AppDaoInt_Impl$15;->call()Lorg/fdroid/database/App;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/fdroid/database/App;
    .locals 70

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 969
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 971
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "repoId"

    .line 973
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "packageName"

    .line 974
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "added"

    .line 975
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "lastUpdated"

    .line 976
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "name"

    .line 977
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "summary"

    .line 978
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "description"

    .line 979
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "localizedName"

    .line 980
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "localizedSummary"

    .line 981
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "webSite"

    .line 982
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "changelog"

    .line 983
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "license"

    .line 984
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "sourceCode"

    .line 985
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "issueTracker"

    .line 986
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "translation"

    .line 987
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "preferredSigner"

    .line 988
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "video"

    .line 989
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "authorName"

    .line 990
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "authorEmail"

    .line 991
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "authorWebSite"

    .line 992
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "authorPhone"

    .line 993
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "donate"

    .line 994
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "liberapayID"

    .line 995
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "liberapay"

    .line 996
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "openCollective"

    .line 997
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    const-string v4, "bitcoin"

    .line 998
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v4

    const-string v4, "litecoin"

    .line 999
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v29, v4

    const-string v4, "flattrID"

    .line 1000
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v30, v4

    const-string v4, "categories"

    .line 1001
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v31, v4

    const-string v4, "isCompatible"

    .line 1002
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v32, v4

    .line 1003
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    move/from16 v33, v3

    .line 1004
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1005
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-eqz v34, :cond_4

    .line 1007
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_0

    move/from16 v35, v15

    const/4 v15, 0x0

    goto :goto_1

    .line 1010
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v35, v15

    move-object/from16 v15, v34

    :goto_1
    if-eqz v15, :cond_1

    .line 1013
    invoke-virtual {v4, v15}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1

    move/from16 v34, v14

    .line 1014
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v15, v14}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_24

    :cond_1
    move/from16 v34, v14

    .line 1018
    :goto_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    .line 1021
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_3
    if-eqz v14, :cond_3

    .line 1024
    invoke-virtual {v3, v14}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1025
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v14, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move/from16 v14, v34

    move/from16 v15, v35

    goto :goto_0

    :cond_4
    move/from16 v34, v14

    move/from16 v35, v15

    const/4 v14, -0x1

    .line 1029
    invoke-interface {v2, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v14, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1030
    invoke-static {v14, v4}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$m__fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)V

    iget-object v14, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1031
    invoke-static {v14, v3}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$m__fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)V

    .line 1033
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_24

    .line 1036
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 1038
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v39, 0x0

    goto :goto_4

    .line 1041
    :cond_5
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    .line 1044
    :goto_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1046
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1049
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    .line 1052
    :cond_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1054
    :goto_5
    sget-object v6, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v6, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v44

    .line 1057
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    .line 1060
    :cond_7
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_6
    invoke-virtual {v6, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v45

    .line 1065
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_7

    .line 1068
    :cond_8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :goto_7
    invoke-virtual {v6, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v46

    .line 1072
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v47, 0x0

    goto :goto_8

    .line 1075
    :cond_9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v47, v0

    .line 1078
    :goto_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v48, 0x0

    goto :goto_9

    .line 1081
    :cond_a
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v48, v0

    .line 1084
    :goto_9
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v34

    const/16 v49, 0x0

    goto :goto_a

    .line 1087
    :cond_b
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v49, v0

    move/from16 v0, v34

    .line 1090
    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_c

    move/from16 v0, v35

    const/16 v50, 0x0

    goto :goto_b

    .line 1093
    :cond_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    move/from16 v0, v35

    .line 1096
    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_d

    move/from16 v0, v33

    const/16 v51, 0x0

    goto :goto_c

    .line 1099
    :cond_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v51, v0

    move/from16 v0, v33

    .line 1102
    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_e

    move/from16 v0, v16

    const/16 v52, 0x0

    goto :goto_d

    .line 1105
    :cond_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v52, v0

    move/from16 v0, v16

    .line 1108
    :goto_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_f

    move/from16 v0, v17

    const/16 v53, 0x0

    goto :goto_e

    .line 1111
    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v53, v0

    move/from16 v0, v17

    .line 1114
    :goto_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_10

    move/from16 v0, v18

    const/16 v54, 0x0

    goto :goto_f

    .line 1117
    :cond_10
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v54, v0

    move/from16 v0, v18

    .line 1120
    :goto_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11

    move/from16 v0, v19

    const/16 v55, 0x0

    goto :goto_10

    .line 1123
    :cond_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v55, v0

    move/from16 v0, v19

    .line 1127
    :goto_10
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v0, 0x0

    goto :goto_11

    .line 1130
    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1132
    :goto_11
    invoke-virtual {v6, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v56

    move/from16 v0, v20

    .line 1134
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_13

    move/from16 v0, v21

    const/16 v57, 0x0

    goto :goto_12

    .line 1137
    :cond_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v57, v0

    move/from16 v0, v21

    .line 1140
    :goto_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_14

    move/from16 v0, v22

    const/16 v58, 0x0

    goto :goto_13

    .line 1143
    :cond_14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v58, v0

    move/from16 v0, v22

    .line 1146
    :goto_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_15

    move/from16 v0, v23

    const/16 v59, 0x0

    goto :goto_14

    .line 1149
    :cond_15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v59, v0

    move/from16 v0, v23

    .line 1152
    :goto_14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_16

    move/from16 v0, v24

    const/16 v60, 0x0

    goto :goto_15

    .line 1155
    :cond_16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v60, v0

    move/from16 v0, v24

    .line 1159
    :goto_15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v0, 0x0

    goto :goto_16

    .line 1162
    :cond_17
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1164
    :goto_16
    invoke-virtual {v6, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v61

    move/from16 v0, v25

    .line 1166
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_18

    move/from16 v0, v26

    const/16 v62, 0x0

    goto :goto_17

    .line 1169
    :cond_18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v62, v0

    move/from16 v0, v26

    .line 1172
    :goto_17
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_19

    move/from16 v0, v27

    const/16 v63, 0x0

    goto :goto_18

    .line 1175
    :cond_19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v63, v0

    move/from16 v0, v27

    .line 1178
    :goto_18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    move/from16 v0, v28

    const/16 v64, 0x0

    goto :goto_19

    .line 1181
    :cond_1a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v64, v0

    move/from16 v0, v28

    .line 1184
    :goto_19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    move/from16 v0, v29

    const/16 v65, 0x0

    goto :goto_1a

    .line 1187
    :cond_1b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v65, v0

    move/from16 v0, v29

    .line 1190
    :goto_1a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    move/from16 v0, v30

    const/16 v66, 0x0

    goto :goto_1b

    .line 1193
    :cond_1c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v66, v0

    move/from16 v0, v30

    .line 1196
    :goto_1b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    move/from16 v0, v31

    const/16 v67, 0x0

    goto :goto_1c

    .line 1199
    :cond_1d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v67, v0

    move/from16 v0, v31

    .line 1203
    :goto_1c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v0, 0x0

    goto :goto_1d

    .line 1206
    :cond_1e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1208
    :goto_1d
    invoke-virtual {v6, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v68

    move/from16 v0, v32

    .line 1211
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v69, 0x1

    goto :goto_1e

    :cond_1f
    const/4 v0, 0x0

    move/from16 v69, v0

    .line 1213
    :goto_1e
    new-instance v0, Lorg/fdroid/database/AppMetadata;

    move-object/from16 v36, v0

    invoke-direct/range {v36 .. v69}, Lorg/fdroid/database/AppMetadata;-><init>(JLjava/lang/String;JJLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1216
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x0

    goto :goto_1f

    .line 1219
    :cond_20
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1f
    if-eqz v6, :cond_21

    .line 1222
    invoke-virtual {v4, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_20

    .line 1224
    :cond_21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    :goto_20
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x0

    goto :goto_21

    .line 1231
    :cond_22
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_21
    if-eqz v5, :cond_23

    .line 1234
    invoke-virtual {v3, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_22

    .line 1236
    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    :goto_22
    new-instance v5, Lorg/fdroid/database/App;

    invoke-direct {v5, v0, v4, v3}, Lorg/fdroid/database/App;-><init>(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)V

    move-object v4, v5

    goto :goto_23

    :cond_24
    const/4 v4, 0x0

    :goto_23
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1242
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1248
    invoke-static {v0}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v4

    :catchall_1
    move-exception v0

    goto :goto_25

    .line 1245
    :goto_24
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1246
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_25
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl$15;->this$0:Lorg/fdroid/database/AppDaoInt_Impl;

    .line 1248
    invoke-static {v2}, Lorg/fdroid/database/AppDaoInt_Impl;->-$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1249
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl$15;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    .line 1254
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
