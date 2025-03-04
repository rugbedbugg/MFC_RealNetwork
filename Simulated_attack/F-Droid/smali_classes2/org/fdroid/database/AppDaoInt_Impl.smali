.class public final Lorg/fdroid/database/AppDaoInt_Impl;
.super Ljava/lang/Object;
.source "AppDaoInt_Impl.java"

# interfaces
.implements Lorg/fdroid/database/AppDaoInt;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAppMetadata:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfLocalizedFile:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfLocalizedFileList:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAppMetadata:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteLocalizedFile:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteLocalizedFileList:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteLocalizedFileLists:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteLocalizedFileLists_1:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteLocalizedFiles:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateAppMetadata:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateCompatibility:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdatePreferredSigner:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfAppMetadata:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CybMFAXz2LqPeEgxIbdjfYhK-JQ(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->lambda$__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon$2(Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b1YW-Vc2IAaWrYXZdmGZ27WNvRM(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->lambda$__fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile$0(Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n-7dwBWDOaW3ttyzFZb_4OVtF3w(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->lambda$__fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList$1(Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__db(Lorg/fdroid/database/AppDaoInt_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 73
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$1;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__insertionAdapterOfAppMetadata:Landroidx/room/EntityInsertionAdapter;

    .line 226
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$2;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$2;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__insertionAdapterOfLocalizedFile:Landroidx/room/EntityInsertionAdapter;

    .line 274
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$3;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$3;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__insertionAdapterOfLocalizedFileList:Landroidx/room/EntityInsertionAdapter;

    .line 322
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$4;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$4;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__updateAdapterOfAppMetadata:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 481
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$5;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$5;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateCompatibility:Landroidx/room/SharedSQLiteStatement;

    .line 494
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$6;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$6;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdatePreferredSigner:Landroidx/room/SharedSQLiteStatement;

    .line 503
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$7;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$7;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 512
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$8;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$8;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 520
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$9;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$9;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFiles:Landroidx/room/SharedSQLiteStatement;

    .line 529
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$10;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$10;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFile:Landroidx/room/SharedSQLiteStatement;

    .line 539
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$11;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$11;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists:Landroidx/room/SharedSQLiteStatement;

    .line 548
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$12;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$12;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists_1:Landroidx/room/SharedSQLiteStatement;

    .line 557
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$13;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$13;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileList:Landroidx/room/SharedSQLiteStatement;

    .line 567
    new-instance v0, Lorg/fdroid/database/AppDaoInt_Impl$14;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl$14;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile(Landroidx/collection/ArrayMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 3882
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3883
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 3886
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    if-le v3, v4, :cond_1

    .line 3887
    new-instance v2, Lorg/fdroid/database/AppDaoInt_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/fdroid/database/AppDaoInt_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;)V

    invoke-static {v0, v5, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchArrayMap(Landroidx/collection/ArrayMap;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 3893
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT `repoId`,`packageName`,`type`,`locale`,`name`,`sha256`,`size`,`ipfsCidV1` FROM `LocalizedFile` WHERE `packageName` IN ("

    .line 3894
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    .line 3896
    invoke-static {v3, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v6, ")"

    .line 3897
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3898
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3900
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 3905
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 3907
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 3909
    :cond_2
    invoke-virtual {v3, v4, v6}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3914
    invoke-static {v2, v3, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "packageName"

    .line 3916
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    .line 3989
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 3928
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3930
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v6

    goto :goto_3

    .line 3933
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_4

    .line 3936
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 3940
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3942
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v11, v6

    goto :goto_4

    .line 3945
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_4
    const/4 v8, 0x2

    .line 3948
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v6

    goto :goto_5

    .line 3951
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    :goto_5
    const/4 v8, 0x3

    .line 3954
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v6

    goto :goto_6

    .line 3957
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    :goto_6
    const/4 v8, 0x4

    .line 3960
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v6

    goto :goto_7

    .line 3963
    :cond_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    :goto_7
    const/4 v8, 0x5

    .line 3966
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object v15, v6

    goto :goto_8

    .line 3969
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    :goto_8
    const/4 v8, 0x6

    .line 3972
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v16, v6

    goto :goto_9

    .line 3975
    :cond_b
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_9
    const/4 v8, 0x7

    .line 3978
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v17, v6

    goto :goto_a

    .line 3981
    :cond_c
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v8

    .line 3983
    :goto_a
    new-instance v8, Lorg/fdroid/database/LocalizedFile;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    invoke-direct/range {v8 .. v17}, Lorg/fdroid/database/LocalizedFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 3984
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_b

    .line 3989
    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3990
    throw v0
.end method

.method private __fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList(Landroidx/collection/ArrayMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 3995
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3996
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 3999
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    if-le v3, v4, :cond_1

    .line 4000
    new-instance v2, Lorg/fdroid/database/AppDaoInt_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/fdroid/database/AppDaoInt_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;)V

    invoke-static {v0, v5, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchArrayMap(Landroidx/collection/ArrayMap;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 4006
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT `repoId`,`packageName`,`type`,`locale`,`name`,`sha256`,`size`,`ipfsCidV1` FROM `LocalizedFileList` WHERE `packageName` IN ("

    .line 4007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4008
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    .line 4009
    invoke-static {v3, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v6, ")"

    .line 4010
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4011
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4013
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 4018
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 4020
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 4022
    :cond_2
    invoke-virtual {v3, v4, v6}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4027
    invoke-static {v2, v3, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "packageName"

    .line 4029
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    .line 4102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 4041
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4043
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v6

    goto :goto_3

    .line 4046
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_4

    .line 4049
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 4053
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4055
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v11, v6

    goto :goto_4

    .line 4058
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_4
    const/4 v8, 0x2

    .line 4061
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v6

    goto :goto_5

    .line 4064
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    :goto_5
    const/4 v8, 0x3

    .line 4067
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v6

    goto :goto_6

    .line 4070
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    :goto_6
    const/4 v8, 0x4

    .line 4073
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v6

    goto :goto_7

    .line 4076
    :cond_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    :goto_7
    const/4 v8, 0x5

    .line 4079
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object v15, v6

    goto :goto_8

    .line 4082
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    :goto_8
    const/4 v8, 0x6

    .line 4085
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v16, v6

    goto :goto_9

    .line 4088
    :cond_b
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_9
    const/4 v8, 0x7

    .line 4091
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v17, v6

    goto :goto_a

    .line 4094
    :cond_c
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v8

    .line 4096
    :goto_a
    new-instance v8, Lorg/fdroid/database/LocalizedFileList;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    invoke-direct/range {v8 .. v17}, Lorg/fdroid/database/LocalizedFileList;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 4097
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_b

    .line 4102
    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4103
    throw v0
.end method

.method private __fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon(Landroidx/collection/ArrayMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 4108
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4109
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 4112
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    if-le v3, v4, :cond_1

    .line 4113
    new-instance v2, Lorg/fdroid/database/AppDaoInt_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/fdroid/database/AppDaoInt_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;)V

    invoke-static {v0, v5, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchArrayMap(Landroidx/collection/ArrayMap;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 4119
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT `repoId`,`packageName`,`type`,`locale`,`name`,`sha256`,`size`,`ipfsCidV1` FROM `LocalizedIcon` WHERE `packageName` IN ("

    .line 4120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4121
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    .line 4122
    invoke-static {v3, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v6, ")"

    .line 4123
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4126
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 4131
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 4133
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 4135
    :cond_2
    invoke-virtual {v3, v4, v6}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4140
    invoke-static {v2, v3, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "packageName"

    .line 4142
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    .line 4215
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 4154
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4156
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v6

    goto :goto_3

    .line 4159
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_4

    .line 4162
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 4166
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4168
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v11, v6

    goto :goto_4

    .line 4171
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_4
    const/4 v8, 0x2

    .line 4174
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v6

    goto :goto_5

    .line 4177
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    :goto_5
    const/4 v8, 0x3

    .line 4180
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v6

    goto :goto_6

    .line 4183
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    :goto_6
    const/4 v8, 0x4

    .line 4186
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v6

    goto :goto_7

    .line 4189
    :cond_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    :goto_7
    const/4 v8, 0x5

    .line 4192
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object v15, v6

    goto :goto_8

    .line 4195
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    :goto_8
    const/4 v8, 0x6

    .line 4198
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v16, v6

    goto :goto_9

    .line 4201
    :cond_b
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_9
    const/4 v8, 0x7

    .line 4204
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v17, v6

    goto :goto_a

    .line 4207
    :cond_c
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v8

    .line 4209
    :goto_a
    new-instance v8, Lorg/fdroid/database/LocalizedIcon;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    invoke-direct/range {v8 .. v17}, Lorg/fdroid/database/LocalizedIcon;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 4210
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_b

    .line 4215
    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4216
    throw v0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 3877
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$__fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile$0(Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 3888
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile(Landroidx/collection/ArrayMap;)V

    .line 3889
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$__fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList$1(Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 4001
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList(Landroidx/collection/ArrayMap;)V

    .line 4002
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic lambda$__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon$2(Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 4114
    invoke-direct {p0, p1}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon(Landroidx/collection/ArrayMap;)V

    .line 4115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 933
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    .line 934
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 936
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 939
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 941
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    .line 944
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 941
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 942
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    .line 944
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 945
    throw v1
.end method

.method public countApps()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM AppMetadata"

    const/4 v1, 0x0

    .line 3795
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3796
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 3797
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 3800
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3801
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3807
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3808
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 3807
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3808
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3809
    throw v1
.end method

.method public countLocalizedFileLists()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM LocalizedFileList"

    const/4 v1, 0x0

    .line 3835
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3836
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 3837
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 3840
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3841
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3847
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3848
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 3847
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3848
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3849
    throw v1
.end method

.method public countLocalizedFiles()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM LocalizedFile"

    const/4 v1, 0x0

    .line 3815
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3816
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 3817
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 3820
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3821
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3827
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3828
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 3827
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3828
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3829
    throw v1
.end method

.method public deleteAppMetadata(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 744
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 745
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 747
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 750
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 752
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 755
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 758
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 760
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 763
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 760
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 761
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 763
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 764
    throw p1
.end method

.method public deleteLocalizedFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 801
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFile:Landroidx/room/SharedSQLiteStatement;

    .line 802
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 804
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 807
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 809
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    if-nez p4, :cond_1

    .line 813
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 815
    :cond_1
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x4

    if-nez p5, :cond_2

    .line 819
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 821
    :cond_2
    invoke-interface {v0, p1, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 824
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 827
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 829
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFile:Landroidx/room/SharedSQLiteStatement;

    .line 832
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 829
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 830
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFile:Landroidx/room/SharedSQLiteStatement;

    .line 832
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 833
    throw p1
.end method

.method public deleteLocalizedFileList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 896
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileList:Landroidx/room/SharedSQLiteStatement;

    .line 897
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 899
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 902
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 904
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    if-nez p4, :cond_1

    .line 908
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 910
    :cond_1
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x4

    if-nez p5, :cond_2

    .line 914
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 916
    :cond_2
    invoke-interface {v0, p1, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 919
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 922
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 924
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileList:Landroidx/room/SharedSQLiteStatement;

    .line 927
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 924
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 925
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileList:Landroidx/room/SharedSQLiteStatement;

    .line 927
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 928
    throw p1
.end method

.method public deleteLocalizedFileLists(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 838
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists:Landroidx/room/SharedSQLiteStatement;

    .line 839
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 841
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 844
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 846
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 849
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 852
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 854
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists:Landroidx/room/SharedSQLiteStatement;

    .line 857
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 854
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 855
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists:Landroidx/room/SharedSQLiteStatement;

    .line 857
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 858
    throw p1
.end method

.method public deleteLocalizedFileLists(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 864
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists_1:Landroidx/room/SharedSQLiteStatement;

    .line 865
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 867
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 870
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 872
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    if-nez p4, :cond_1

    .line 876
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 878
    :cond_1
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 881
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 884
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 886
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists_1:Landroidx/room/SharedSQLiteStatement;

    .line 889
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 886
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 887
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFileLists_1:Landroidx/room/SharedSQLiteStatement;

    .line 889
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 890
    throw p1
.end method

.method public deleteLocalizedFiles(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 769
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFiles:Landroidx/room/SharedSQLiteStatement;

    .line 770
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 772
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 775
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 777
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    if-nez p4, :cond_1

    .line 781
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 783
    :cond_1
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 786
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 789
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 791
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFiles:Landroidx/room/SharedSQLiteStatement;

    .line 794
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 791
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 792
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfDeleteLocalizedFiles:Landroidx/room/SharedSQLiteStatement;

    .line 794
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 795
    throw p1
.end method

.method public getApp(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "SELECT AppMetadata.* FROM AppMetadata\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        LEFT JOIN AppPrefs USING (packageName)\n        WHERE packageName = ? AND pref.enabled = 1 AND\n            COALESCE(preferredRepoId, repoId) = repoId\n        ORDER BY pref.weight DESC LIMIT 1"

    const/4 v1, 0x1

    .line 956
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 959
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 961
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 963
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "RepositoryPreferences"

    const-string v3, "AppPrefs"

    const-string v4, "LocalizedFile"

    const-string v5, "LocalizedFileList"

    const-string v6, "AppMetadata"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$15;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$15;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getApp(JLjava/lang/String;)Lorg/fdroid/database/App;
    .locals 69

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "SELECT * FROM AppMetadata\n        WHERE repoId = ? AND packageName = ?"

    const/4 v3, 0x2

    .line 1263
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    move-wide/from16 v5, p1

    .line 1265
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez v0, :cond_0

    .line 1268
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1270
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1272
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1273
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 1275
    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "repoId"

    .line 1277
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "packageName"

    .line 1278
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "added"

    .line 1279
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "lastUpdated"

    .line 1280
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "name"

    .line 1281
    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "summary"

    .line 1282
    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "description"

    .line 1283
    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "localizedName"

    .line 1284
    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "localizedSummary"

    .line 1285
    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "webSite"

    .line 1286
    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "changelog"

    .line 1287
    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "license"

    .line 1288
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sourceCode"

    .line 1289
    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v2

    :try_start_2
    const-string v2, "issueTracker"

    .line 1290
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v2

    const-string v2, "translation"

    .line 1291
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p3, v2

    const-string v2, "preferredSigner"

    .line 1292
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "video"

    .line 1293
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "authorName"

    .line 1294
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "authorEmail"

    .line 1295
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "authorWebSite"

    .line 1296
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "authorPhone"

    .line 1297
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "donate"

    .line 1298
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "liberapayID"

    .line 1299
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "liberapay"

    .line 1300
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "openCollective"

    .line 1301
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "bitcoin"

    .line 1302
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "litecoin"

    .line 1303
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "flattrID"

    .line 1304
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "categories"

    .line 1305
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "isCompatible"

    .line 1306
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    .line 1307
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    move/from16 v32, v4

    .line 1308
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1309
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 1311
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1

    move/from16 v34, v3

    const/4 v3, 0x0

    goto :goto_2

    .line 1314
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v3

    move-object/from16 v3, v33

    :goto_2
    if-eqz v3, :cond_2

    .line 1317
    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2

    move/from16 v33, v15

    .line 1318
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_25

    :cond_2
    move/from16 v33, v15

    .line 1322
    :goto_3
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    .line 1325
    :cond_3
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_4

    .line 1328
    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1329
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move/from16 v15, v33

    move/from16 v3, v34

    goto :goto_1

    :cond_5
    move/from16 v34, v3

    move/from16 v33, v15

    const/4 v3, -0x1

    .line 1333
    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1334
    invoke-direct {v1, v2}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedFileAsorgFdroidDatabaseLocalizedFile(Landroidx/collection/ArrayMap;)V

    .line 1335
    invoke-direct {v1, v4}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedFileListAsorgFdroidDatabaseLocalizedFileList(Landroidx/collection/ArrayMap;)V

    .line 1337
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1340
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1342
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v38, 0x0

    goto :goto_5

    .line 1345
    :cond_6
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    .line 1348
    :goto_5
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 1350
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1353
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    .line 1356
    :cond_7
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1358
    :goto_6
    sget-object v3, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v3, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v43

    .line 1361
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_7

    .line 1364
    :cond_8
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1366
    :goto_7
    invoke-virtual {v3, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v44

    .line 1369
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_8

    .line 1372
    :cond_9
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1374
    :goto_8
    invoke-virtual {v3, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v45

    .line 1376
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v46, 0x0

    goto :goto_9

    .line 1379
    :cond_a
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    .line 1382
    :goto_9
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v47, 0x0

    goto :goto_a

    .line 1385
    :cond_b
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v47, v0

    .line 1388
    :goto_a
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v0, v33

    const/16 v48, 0x0

    goto :goto_b

    .line 1391
    :cond_c
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v48, v0

    move/from16 v0, v33

    .line 1394
    :goto_b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_d

    move/from16 v0, v34

    const/16 v49, 0x0

    goto :goto_c

    .line 1397
    :cond_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v49, v0

    move/from16 v0, v34

    .line 1400
    :goto_c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_e

    move/from16 v0, v32

    const/16 v50, 0x0

    goto :goto_d

    .line 1403
    :cond_e
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    move/from16 v0, v32

    .line 1406
    :goto_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_f

    move/from16 v0, p2

    const/16 v51, 0x0

    goto :goto_e

    .line 1409
    :cond_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v51, v0

    move/from16 v0, p2

    .line 1412
    :goto_e
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_10

    move/from16 v0, p3

    const/16 v52, 0x0

    goto :goto_f

    .line 1415
    :cond_10
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v52, v0

    move/from16 v0, p3

    .line 1418
    :goto_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11

    move/from16 v0, v17

    const/16 v53, 0x0

    goto :goto_10

    .line 1421
    :cond_11
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v53, v0

    move/from16 v0, v17

    .line 1424
    :goto_10
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v0, v18

    const/16 v54, 0x0

    goto :goto_11

    .line 1427
    :cond_12
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v54, v0

    move/from16 v0, v18

    .line 1431
    :goto_11
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v0, 0x0

    goto :goto_12

    .line 1434
    :cond_13
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1436
    :goto_12
    invoke-virtual {v3, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v55

    move/from16 v0, v19

    .line 1438
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_14

    move/from16 v0, v20

    const/16 v56, 0x0

    goto :goto_13

    .line 1441
    :cond_14
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v56, v0

    move/from16 v0, v20

    .line 1444
    :goto_13
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_15

    move/from16 v0, v21

    const/16 v57, 0x0

    goto :goto_14

    .line 1447
    :cond_15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v57, v0

    move/from16 v0, v21

    .line 1450
    :goto_14
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_16

    move/from16 v0, v22

    const/16 v58, 0x0

    goto :goto_15

    .line 1453
    :cond_16
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v58, v0

    move/from16 v0, v22

    .line 1456
    :goto_15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_17

    move/from16 v0, v23

    const/16 v59, 0x0

    goto :goto_16

    .line 1459
    :cond_17
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v59, v0

    move/from16 v0, v23

    .line 1463
    :goto_16
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v0, 0x0

    goto :goto_17

    .line 1466
    :cond_18
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1468
    :goto_17
    invoke-virtual {v3, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v60

    move/from16 v0, v24

    .line 1470
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_19

    move/from16 v0, v25

    const/16 v61, 0x0

    goto :goto_18

    .line 1473
    :cond_19
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v61, v0

    move/from16 v0, v25

    .line 1476
    :goto_18
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    move/from16 v0, v26

    const/16 v62, 0x0

    goto :goto_19

    .line 1479
    :cond_1a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v62, v0

    move/from16 v0, v26

    .line 1482
    :goto_19
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    move/from16 v0, v27

    const/16 v63, 0x0

    goto :goto_1a

    .line 1485
    :cond_1b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v63, v0

    move/from16 v0, v27

    .line 1488
    :goto_1a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    move/from16 v0, v28

    const/16 v64, 0x0

    goto :goto_1b

    .line 1491
    :cond_1c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v64, v0

    move/from16 v0, v28

    .line 1494
    :goto_1b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    move/from16 v0, v29

    const/16 v65, 0x0

    goto :goto_1c

    .line 1497
    :cond_1d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v65, v0

    move/from16 v0, v29

    .line 1500
    :goto_1c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    move/from16 v0, v30

    const/16 v66, 0x0

    goto :goto_1d

    .line 1503
    :cond_1e
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v66, v0

    move/from16 v0, v30

    .line 1507
    :goto_1d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v0, 0x0

    goto :goto_1e

    .line 1510
    :cond_1f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1512
    :goto_1e
    invoke-virtual {v3, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v67

    move/from16 v0, v31

    .line 1515
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_20

    const/16 v68, 0x1

    goto :goto_1f

    :cond_20
    const/4 v0, 0x0

    move/from16 v68, v0

    .line 1517
    :goto_1f
    new-instance v0, Lorg/fdroid/database/AppMetadata;

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v68}, Lorg/fdroid/database/AppMetadata;-><init>(JLjava/lang/String;JJLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1520
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    goto :goto_20

    .line 1523
    :cond_21
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_20
    if-eqz v3, :cond_22

    .line 1526
    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_21

    .line 1528
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    :goto_21
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    goto :goto_22

    .line 1535
    :cond_23
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_22
    if-eqz v3, :cond_24

    .line 1538
    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_23

    .line 1540
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1542
    :goto_23
    new-instance v4, Lorg/fdroid/database/App;

    invoke-direct {v4, v0, v2, v3}, Lorg/fdroid/database/App;-><init>(Lorg/fdroid/database/AppMetadata;Ljava/util/List;Ljava/util/List;)V

    move-object v3, v4

    goto :goto_24

    :cond_25
    const/4 v3, 0x0

    :goto_24
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1546
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1549
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1550
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1553
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_26

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .line 1549
    :goto_25
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1550
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1551
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_26
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1553
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1554
    throw v0
.end method

.method public getAppListItems(JLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, app.localizedName, app.localizedSummary, app.lastUpdated, \n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        WHERE repoId = ? AND app.rowid IN (\n            SELECT rowid FROM AppMetadataFts\n            WHERE repoId = ? AND AppMetadataFts MATCH ?\n        )"

    const/4 v1, 0x3

    .line 2114
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 2116
    invoke-virtual {v0, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v3, 0x2

    .line 2118
    invoke-virtual {v0, v3, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez p3, :cond_0

    .line 2121
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2123
    :cond_0
    invoke-virtual {v0, v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2125
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "HighestVersion"

    const-string p3, "AppMetadataFts"

    const-string v1, "LocalizedIcon"

    const-string v3, "AppMetadata"

    filled-new-array {v1, v3, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/fdroid/database/AppDaoInt_Impl$20;

    invoke-direct {p3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$20;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v2, p3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItems(Landroid/content/pm/PackageManager;JLjava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "J",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 3867
    invoke-static/range {p0 .. p5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->getAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;JLjava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItems(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 3861
    invoke-static {p0, p1, p2, p3, p4}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->getAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItems(Landroid/content/pm/PackageManager;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lorg/fdroid/database/AppListSortOrder;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 3855
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->getAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;Ljava/lang/String;Lorg/fdroid/database/AppListSortOrder;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItems(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, app.localizedName, app.localizedSummary, app.lastUpdated, \n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        JOIN AppMetadataFts USING (repoId, packageName)\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        WHERE pref.enabled = 1 AND AppMetadataFts MATCH ? AND\n           COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)"

    const/4 v1, 0x1

    .line 1854
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1857
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1859
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1861
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "LocalizedIcon"

    const-string v3, "AppMetadata"

    const-string v4, "AppMetadataFts"

    const-string v5, "HighestVersion"

    const-string v6, "AppPrefs"

    const-string v7, "RepositoryPreferences"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$18;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$18;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItems(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, app.localizedName, app.localizedSummary, app.lastUpdated, \n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        JOIN AppMetadataFts USING (repoId, packageName)\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        WHERE pref.enabled = 1 AND categories LIKE \'%,\' || ? || \',%\' AND\n           AppMetadataFts MATCH ? AND\n           COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)"

    const/4 v1, 0x2

    .line 1983
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1986
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1988
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 1992
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1994
    :cond_1
    invoke-virtual {v0, v1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1996
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v3, "LocalizedIcon"

    const-string v4, "AppMetadata"

    const-string v5, "AppMetadataFts"

    const-string v6, "HighestVersion"

    const-string v7, "AppPrefs"

    const-string v8, "RepositoryPreferences"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/fdroid/database/AppDaoInt_Impl$19;

    invoke-direct {v1, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$19;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v2, v1}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItems(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 2234
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT repoId, packageName, localizedName, localizedSummary, app.lastUpdated, "

    .line 2235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 2236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                     app.isCompatible, app.preferredSigner"

    .line 2237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        FROM AppMetadata AS app"

    .line 2239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        JOIN RepositoryPreferences AS pref USING (repoId)"

    .line 2241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        LEFT JOIN AppPrefs USING (packageName)"

    .line 2243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        WHERE pref.enabled = 1 AND packageName IN ("

    .line 2245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2247
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ") AND"

    .line 2248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "           COALESCE(preferredRepoId, repoId) = repoId"

    .line 2250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        GROUP BY packageName HAVING MAX(pref.weight)"

    .line 2252
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "        ORDER BY localizedName COLLATE NOCASE ASC"

    .line 2254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2257
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2261
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 2263
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2267
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "RepositoryPreferences"

    const-string v3, "AppPrefs"

    const-string v4, "LocalizedIcon"

    const-string v5, "AppMetadata"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$21;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$21;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItemsByLastUpdated()Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, localizedName, localizedSummary, app.lastUpdated,\n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        WHERE pref.enabled = 1 AND COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)\n        ORDER BY app.lastUpdated DESC"

    const/4 v1, 0x0

    .line 3439
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3440
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    const-string v2, "HighestVersion"

    const-string v3, "AppPrefs"

    const-string v4, "LocalizedIcon"

    const-string v5, "AppMetadata"

    const-string v6, "RepositoryPreferences"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$25;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$25;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAppListItemsByLastUpdated(J)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, localizedName, localizedSummary, app.lastUpdated, \n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        WHERE repoId = ?\n        ORDER BY app.lastUpdated DESC"

    const/4 v1, 0x1

    .line 3683
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 3685
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3686
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "AppMetadata"

    const-string v2, "HighestVersion"

    const-string v3, "LocalizedIcon"

    filled-new-array {v3, p2, v2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/fdroid/database/AppDaoInt_Impl$27;

    invoke-direct {v2, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$27;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v1, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItemsByLastUpdated(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, localizedName, localizedSummary, app.lastUpdated, \n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        WHERE pref.enabled = 1 AND categories LIKE \'%,\' || ? || \',%\' AND\n           COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)\n        ORDER BY app.lastUpdated DESC"

    const/4 v1, 0x1

    .line 3560
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 3563
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 3565
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3567
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "HighestVersion"

    const-string v3, "AppPrefs"

    const-string v4, "LocalizedIcon"

    const-string v5, "AppMetadata"

    const-string v6, "RepositoryPreferences"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$26;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$26;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItemsByName()Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, localizedName, localizedSummary, app.lastUpdated, \n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        WHERE pref.enabled = 1 AND COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)\n        ORDER BY localizedName COLLATE NOCASE ASC"

    const/4 v1, 0x0

    .line 3074
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3075
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    const-string v2, "AppPrefs"

    const-string v3, "RepositoryPreferences"

    const-string v4, "LocalizedIcon"

    const-string v5, "AppMetadata"

    const-string v6, "HighestVersion"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$22;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$22;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAppListItemsByName(J)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, localizedName, localizedSummary, app.lastUpdated,\n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        WHERE repoId = ?\n        ORDER BY localizedName COLLATE NOCASE ASC"

    const/4 v1, 0x1

    .line 3318
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 3320
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3321
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "AppMetadata"

    const-string v2, "HighestVersion"

    const-string v3, "LocalizedIcon"

    filled-new-array {v3, p2, v2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/fdroid/database/AppDaoInt_Impl$24;

    invoke-direct {v2, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$24;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v1, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppListItemsByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "\n        SELECT repoId, packageName, localizedName, localizedSummary, app.lastUpdated,\n               version.antiFeatures, app.isCompatible, app.preferredSigner\n        FROM AppMetadata AS app\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        WHERE pref.enabled = 1 AND categories LIKE \'%,\' || ? || \',%\' AND\n           COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)\n        ORDER BY localizedName COLLATE NOCASE ASC"

    const/4 v1, 0x1

    .line 3195
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 3198
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 3200
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3202
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "HighestVersion"

    const-string v3, "AppPrefs"

    const-string v4, "LocalizedIcon"

    const-string v5, "AppMetadata"

    const-string v6, "RepositoryPreferences"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$23;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$23;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppMetadata()Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AppMetadata;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM AppMetadata"

    const/4 v2, 0x0

    .line 2657
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2658
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    .line 2659
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "repoId"

    .line 2661
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "packageName"

    .line 2662
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "added"

    .line 2663
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "lastUpdated"

    .line 2664
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "name"

    .line 2665
    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "summary"

    .line 2666
    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "description"

    .line 2667
    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "localizedName"

    .line 2668
    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "localizedSummary"

    .line 2669
    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "webSite"

    .line 2670
    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "changelog"

    .line 2671
    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "license"

    .line 2672
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "sourceCode"

    .line 2673
    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "issueTracker"

    .line 2674
    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "translation"

    .line 2675
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "preferredSigner"

    .line 2676
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "video"

    .line 2677
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "authorName"

    .line 2678
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "authorEmail"

    .line 2679
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "authorWebSite"

    .line 2680
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "authorPhone"

    .line 2681
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "donate"

    .line 2682
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "liberapayID"

    .line 2683
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "liberapay"

    .line 2684
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "openCollective"

    .line 2685
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "bitcoin"

    .line 2686
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "litecoin"

    .line 2687
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "flattrID"

    .line 2688
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "categories"

    .line 2689
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "isCompatible"

    .line 2690
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    .line 2691
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v33, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2692
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2695
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 2697
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v37, 0x0

    goto :goto_1

    .line 2700
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v37, v1

    .line 2703
    :goto_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 2705
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 2708
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v68, v0

    const/4 v1, 0x0

    goto :goto_2

    .line 2711
    :cond_1
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v68, v0

    .line 2713
    :goto_2
    sget-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v42

    .line 2716
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    .line 2719
    :cond_2
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2721
    :goto_3
    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v43

    .line 2724
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    .line 2727
    :cond_3
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2729
    :goto_4
    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v44

    .line 2731
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v45, 0x0

    goto :goto_5

    .line 2734
    :cond_4
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v45, v1

    .line 2737
    :goto_5
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v46, 0x0

    goto :goto_6

    .line 2740
    :cond_5
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v46, v1

    .line 2743
    :goto_6
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v47, 0x0

    goto :goto_7

    .line 2746
    :cond_6
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v47, v1

    .line 2749
    :goto_7
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v48, 0x0

    goto :goto_8

    .line 2752
    :cond_7
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v48, v1

    .line 2755
    :goto_8
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v49, 0x0

    goto :goto_9

    .line 2758
    :cond_8
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v49, v1

    .line 2761
    :goto_9
    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v1, v33

    const/16 v50, 0x0

    goto :goto_a

    .line 2764
    :cond_9
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v50, v1

    move/from16 v1, v33

    .line 2767
    :goto_a
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_a

    move/from16 v33, v1

    move/from16 v1, v17

    const/16 v51, 0x0

    goto :goto_b

    .line 2770
    :cond_a
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v51, v33

    move/from16 v33, v1

    move/from16 v1, v17

    .line 2773
    :goto_b
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v17, v1

    move/from16 v1, v18

    const/16 v52, 0x0

    goto :goto_c

    .line 2776
    :cond_b
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v52, v17

    move/from16 v17, v1

    move/from16 v1, v18

    .line 2779
    :goto_c
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    move/from16 v18, v1

    move/from16 v1, v19

    const/16 v53, 0x0

    goto :goto_d

    .line 2782
    :cond_c
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v53, v18

    move/from16 v18, v1

    move/from16 v1, v19

    .line 2786
    :goto_d
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_d

    move/from16 v69, v1

    const/4 v1, 0x0

    goto :goto_e

    .line 2789
    :cond_d
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v69, v1

    move-object/from16 v1, v19

    .line 2791
    :goto_e
    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v54

    move/from16 v1, v20

    .line 2793
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    move/from16 v20, v1

    move/from16 v1, v21

    const/16 v55, 0x0

    goto :goto_f

    .line 2796
    :cond_e
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v20, v1

    move-object/from16 v55, v19

    move/from16 v1, v21

    .line 2799
    :goto_f
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v21, v1

    move/from16 v1, v22

    const/16 v56, 0x0

    goto :goto_10

    .line 2802
    :cond_f
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v21, v1

    move-object/from16 v56, v19

    move/from16 v1, v22

    .line 2805
    :goto_10
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v22, v1

    move/from16 v1, v23

    const/16 v57, 0x0

    goto :goto_11

    .line 2808
    :cond_10
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v22, v1

    move-object/from16 v57, v19

    move/from16 v1, v23

    .line 2811
    :goto_11
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v23, v1

    move/from16 v1, v24

    const/16 v58, 0x0

    goto :goto_12

    .line 2814
    :cond_11
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v23, v1

    move-object/from16 v58, v19

    move/from16 v1, v24

    .line 2818
    :goto_12
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v24, v1

    const/4 v1, 0x0

    goto :goto_13

    .line 2821
    :cond_12
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v24, v1

    move-object/from16 v1, v19

    .line 2823
    :goto_13
    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v59

    move/from16 v1, v25

    .line 2825
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_13

    move/from16 v25, v1

    move/from16 v1, v26

    const/16 v60, 0x0

    goto :goto_14

    .line 2828
    :cond_13
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v25, v1

    move-object/from16 v60, v19

    move/from16 v1, v26

    .line 2831
    :goto_14
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_14

    move/from16 v26, v1

    move/from16 v1, v27

    const/16 v61, 0x0

    goto :goto_15

    .line 2834
    :cond_14
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v26, v1

    move-object/from16 v61, v19

    move/from16 v1, v27

    .line 2837
    :goto_15
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_15

    move/from16 v27, v1

    move/from16 v1, v28

    const/16 v62, 0x0

    goto :goto_16

    .line 2840
    :cond_15
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v27, v1

    move-object/from16 v62, v19

    move/from16 v1, v28

    .line 2843
    :goto_16
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_16

    move/from16 v28, v1

    move/from16 v1, v29

    const/16 v63, 0x0

    goto :goto_17

    .line 2846
    :cond_16
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v28, v1

    move-object/from16 v63, v19

    move/from16 v1, v29

    .line 2849
    :goto_17
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_17

    move/from16 v29, v1

    move/from16 v1, v30

    const/16 v64, 0x0

    goto :goto_18

    .line 2852
    :cond_17
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v29, v1

    move-object/from16 v64, v19

    move/from16 v1, v30

    .line 2855
    :goto_18
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_18

    move/from16 v30, v1

    move/from16 v1, v31

    const/16 v65, 0x0

    goto :goto_19

    .line 2858
    :cond_18
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v30, v1

    move-object/from16 v65, v19

    move/from16 v1, v31

    .line 2862
    :goto_19
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_19

    move/from16 v31, v1

    const/4 v1, 0x0

    goto :goto_1a

    .line 2865
    :cond_19
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v31, v1

    move-object/from16 v1, v19

    .line 2867
    :goto_1a
    invoke-virtual {v0, v1}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v66

    move/from16 v0, v32

    .line 2870
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    move/from16 v67, v1

    goto :goto_1b

    :cond_1a
    const/16 v67, 0x0

    .line 2872
    :goto_1b
    new-instance v1, Lorg/fdroid/database/AppMetadata;

    move-object/from16 v34, v1

    invoke-direct/range {v34 .. v67}, Lorg/fdroid/database/AppMetadata;-><init>(JLjava/lang/String;JJLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 2873
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v32, v0

    move/from16 v0, v68

    move/from16 v19, v69

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1c

    .line 2877
    :cond_1b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2878
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 2877
    :goto_1c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2878
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2879
    throw v0
.end method

.method public getAppMetadata(JLjava/lang/String;)Lorg/fdroid/database/AppMetadata;
    .locals 66

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "SELECT * FROM AppMetadata\n        WHERE repoId = ? AND packageName = ?"

    const/4 v3, 0x2

    .line 2421
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    move-wide/from16 v5, p1

    .line 2423
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez v0, :cond_0

    .line 2426
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2428
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2430
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2431
    invoke-static {v0, v2, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "repoId"

    .line 2433
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "packageName"

    .line 2434
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "added"

    .line 2435
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "lastUpdated"

    .line 2436
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "name"

    .line 2437
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "summary"

    .line 2438
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "description"

    .line 2439
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "localizedName"

    .line 2440
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "localizedSummary"

    .line 2441
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "webSite"

    .line 2442
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "changelog"

    .line 2443
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "license"

    .line 2444
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sourceCode"

    .line 2445
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "issueTracker"

    .line 2446
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "translation"

    .line 2447
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p3, v2

    const-string v2, "preferredSigner"

    .line 2448
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "video"

    .line 2449
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "authorName"

    .line 2450
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "authorEmail"

    .line 2451
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "authorWebSite"

    .line 2452
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "authorPhone"

    .line 2453
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "donate"

    .line 2454
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "liberapayID"

    .line 2455
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "liberapay"

    .line 2456
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "openCollective"

    .line 2457
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "bitcoin"

    .line 2458
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "litecoin"

    .line 2459
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "flattrID"

    .line 2460
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "categories"

    .line 2461
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "isCompatible"

    .line 2462
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 2464
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 2466
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 2468
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v35, 0x0

    goto :goto_1

    .line 2471
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v35, v0

    .line 2474
    :goto_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 2476
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 2479
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 2482
    :cond_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2484
    :goto_2
    sget-object v7, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v40

    .line 2487
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 2490
    :cond_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2492
    :goto_3
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v41

    .line 2495
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 2498
    :cond_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2500
    :goto_4
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v42

    .line 2502
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v43, 0x0

    goto :goto_5

    .line 2505
    :cond_5
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    .line 2508
    :goto_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v44, 0x0

    goto :goto_6

    .line 2511
    :cond_6
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    .line 2514
    :goto_6
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v45, 0x0

    goto :goto_7

    .line 2517
    :cond_7
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    .line 2520
    :goto_7
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v46, 0x0

    goto :goto_8

    .line 2523
    :cond_8
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    .line 2526
    :goto_8
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v47, 0x0

    goto :goto_9

    .line 2529
    :cond_9
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v47, v0

    .line 2532
    :goto_9
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v48, 0x0

    goto :goto_a

    .line 2535
    :cond_a
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v48, v0

    .line 2538
    :goto_a
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, p3

    const/16 v49, 0x0

    goto :goto_b

    .line 2541
    :cond_b
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v49, v0

    move/from16 v0, p3

    .line 2544
    :goto_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v0, v17

    const/16 v50, 0x0

    goto :goto_c

    .line 2547
    :cond_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    move/from16 v0, v17

    .line 2550
    :goto_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v0, v18

    const/16 v51, 0x0

    goto :goto_d

    .line 2553
    :cond_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v51, v0

    move/from16 v0, v18

    .line 2557
    :goto_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    .line 2560
    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2562
    :goto_e
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v52

    move/from16 v0, v19

    .line 2564
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move/from16 v0, v20

    const/16 v53, 0x0

    goto :goto_f

    .line 2567
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v53, v0

    move/from16 v0, v20

    .line 2570
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v0, v21

    const/16 v54, 0x0

    goto :goto_10

    .line 2573
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v54, v0

    move/from16 v0, v21

    .line 2576
    :goto_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move/from16 v0, v22

    const/16 v55, 0x0

    goto :goto_11

    .line 2579
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v55, v0

    move/from16 v0, v22

    .line 2582
    :goto_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move/from16 v0, v23

    const/16 v56, 0x0

    goto :goto_12

    .line 2585
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v56, v0

    move/from16 v0, v23

    .line 2589
    :goto_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    goto :goto_13

    .line 2592
    :cond_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2594
    :goto_13
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move/from16 v0, v24

    .line 2596
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move/from16 v0, v25

    const/16 v58, 0x0

    goto :goto_14

    .line 2599
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v58, v0

    move/from16 v0, v25

    .line 2602
    :goto_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_15

    move/from16 v0, v26

    const/16 v59, 0x0

    goto :goto_15

    .line 2605
    :cond_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v59, v0

    move/from16 v0, v26

    .line 2608
    :goto_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move/from16 v0, v27

    const/16 v60, 0x0

    goto :goto_16

    .line 2611
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v60, v0

    move/from16 v0, v27

    .line 2614
    :goto_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move/from16 v0, v28

    const/16 v61, 0x0

    goto :goto_17

    .line 2617
    :cond_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v61, v0

    move/from16 v0, v28

    .line 2620
    :goto_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v0, v29

    const/16 v62, 0x0

    goto :goto_18

    .line 2623
    :cond_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v62, v0

    move/from16 v0, v29

    .line 2626
    :goto_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    move/from16 v0, v30

    const/16 v63, 0x0

    goto :goto_19

    .line 2629
    :cond_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v63, v0

    move/from16 v0, v30

    .line 2633
    :goto_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v5, 0x0

    goto :goto_1a

    .line 2636
    :cond_1a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2638
    :goto_1a
    invoke-virtual {v7, v5}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v64

    .line 2641
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v65, 0x1

    goto :goto_1b

    :cond_1b
    const/16 v65, 0x0

    .line 2643
    :goto_1b
    new-instance v5, Lorg/fdroid/database/AppMetadata;

    move-object/from16 v32, v5

    invoke-direct/range {v32 .. v65}, Lorg/fdroid/database/AppMetadata;-><init>(JLjava/lang/String;JJLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1c

    :catchall_0
    move-exception v0

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    .line 2649
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2650
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 2649
    :goto_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2650
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2651
    throw v0
.end method

.method public getAppOverviewItem(JLjava/lang/String;)Lorg/fdroid/database/AppOverviewItem;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "SELECT repoId, packageName, added, app.lastUpdated, localizedName,\n             localizedSummary, app.isCompatible\n        FROM AppMetadata AS app WHERE repoId = ? AND packageName = ?"

    const/4 v3, 0x2

    .line 2968
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    move-wide/from16 v5, p1

    .line 2970
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez v0, :cond_0

    .line 2973
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2975
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2977
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2978
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    .line 2980
    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2989
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 2990
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2992
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v5

    goto :goto_2

    .line 2995
    :cond_2
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_1

    .line 2998
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2999
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    const/4 v7, -0x1

    .line 3003
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3004
    invoke-direct {v1, v0}, Lorg/fdroid/database/AppDaoInt_Impl;->__fetchRelationshipLocalizedIconAsorgFdroidDatabaseLocalizedIcon(Landroidx/collection/ArrayMap;)V

    .line 3006
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    .line 3008
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3010
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v11, v5

    goto :goto_3

    .line 3013
    :cond_4
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    .line 3016
    :goto_3
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x3

    .line 3018
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v3, 0x4

    .line 3020
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v16, v5

    goto :goto_4

    .line 3023
    :cond_5
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_4
    const/4 v3, 0x5

    .line 3026
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v17, v5

    goto :goto_5

    .line 3029
    :cond_6
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_5
    const/4 v3, 0x6

    .line 3033
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v20, v4

    goto :goto_6

    :cond_7
    move/from16 v20, v7

    .line 3037
    :goto_6
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    .line 3040
    :cond_8
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    if-eqz v5, :cond_9

    .line 3043
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_8
    move-object/from16 v19, v0

    goto :goto_9

    .line 3045
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    .line 3047
    :goto_9
    new-instance v5, Lorg/fdroid/database/AppOverviewItem;

    const/16 v18, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v20}, Lorg/fdroid/database/AppOverviewItem;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    :cond_a
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3051
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3054
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3055
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3058
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_b

    .line 3054
    :goto_a
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3055
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3056
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_b
    iget-object v2, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3058
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 3059
    throw v0
.end method

.method public getAppOverviewItems(I)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "SELECT repoId, packageName, app.added, app.lastUpdated, localizedName,\n            localizedSummary, version.antiFeatures, app.isCompatible\n        FROM AppMetadata AS app\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN LocalizedIcon AS icon USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        WHERE pref.enabled = 1 AND COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)\n        ORDER BY localizedName IS NULL ASC, icon.packageName IS NULL ASC,\n            localizedSummary IS NULL ASC, app.lastUpdated DESC\n        LIMIT ?"

    const/4 v1, 0x1

    .line 1603
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 1605
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1606
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "HighestVersion"

    const-string v3, "AppPrefs"

    const-string v4, "LocalizedIcon"

    const-string v5, "AppMetadata"

    const-string v6, "RepositoryPreferences"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/AppDaoInt_Impl$16;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$16;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppOverviewItems(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "SELECT repoId, packageName, app.added, app.lastUpdated, localizedName,\n             localizedSummary, version.antiFeatures, app.isCompatible\n        FROM AppMetadata AS app\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        LEFT JOIN HighestVersion AS version USING (repoId, packageName)\n        LEFT JOIN LocalizedIcon AS icon USING (repoId, packageName)\n        LEFT JOIN AppPrefs USING (packageName)\n        WHERE pref.enabled = 1 AND categories  LIKE \'%,\' || ? || \',%\' AND\n           COALESCE(preferredRepoId, repoId) = repoId\n        GROUP BY packageName HAVING MAX(pref.weight)\n        ORDER BY localizedName IS NULL ASC, icon.packageName IS NULL ASC,\n            localizedSummary IS NULL ASC, app.lastUpdated DESC\n        LIMIT ?"

    const/4 v1, 0x2

    .line 1727
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1730
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1732
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    int-to-long p1, p2

    .line 1735
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1736
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "HighestVersion"

    const-string v1, "AppPrefs"

    const-string v3, "LocalizedIcon"

    const-string v4, "AppMetadata"

    const-string v5, "RepositoryPreferences"

    filled-new-array {v3, v4, v5, p2, v1}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/fdroid/database/AppDaoInt_Impl$17;

    invoke-direct {v1, p0, v0}, Lorg/fdroid/database/AppDaoInt_Impl$17;-><init>(Lorg/fdroid/database/AppDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v2, v1}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledAppListItems(Landroid/content/pm/PackageManager;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 3872
    invoke-static {p0, p1}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->getInstalledAppListItems(Lorg/fdroid/database/AppDaoInt;Landroid/content/pm/PackageManager;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getLocalizedFiles(JLjava/lang/String;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "SELECT * FROM LocalizedFile\n        WHERE repoId = ? AND packageName = ?"

    const/4 v3, 0x2

    .line 2886
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    move-wide/from16 v5, p1

    .line 2888
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez v0, :cond_0

    .line 2891
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2893
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2895
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2896
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "repoId"

    .line 2898
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "packageName"

    .line 2899
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "type"

    .line 2900
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "locale"

    .line 2901
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "name"

    .line 2902
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sha256"

    .line 2903
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "size"

    .line 2904
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "ipfsCidV1"

    .line 2905
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 2906
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 2907
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2910
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2912
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v17, v4

    goto :goto_2

    .line 2915
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    .line 2918
    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v18, v4

    goto :goto_3

    .line 2921
    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    .line 2924
    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v19, v4

    goto :goto_4

    .line 2927
    :cond_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v13

    .line 2930
    :goto_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v20, v4

    goto :goto_5

    .line 2933
    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v13

    .line 2936
    :goto_5
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v21, v4

    goto :goto_6

    .line 2939
    :cond_5
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v13

    .line 2942
    :goto_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v22, v4

    goto :goto_7

    .line 2945
    :cond_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v22, v13

    .line 2948
    :goto_7
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v23, v4

    goto :goto_8

    .line 2951
    :cond_7
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v23, v13

    .line 2953
    :goto_8
    new-instance v13, Lorg/fdroid/database/LocalizedFile;

    move-object v14, v13

    invoke-direct/range {v14 .. v23}, Lorg/fdroid/database/LocalizedFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 2954
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 2958
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2959
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v12

    .line 2958
    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2959
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2960
    throw v0
.end method

.method public getNumberOfAppsInCategory(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SELECT COUNT(DISTINCT packageName) FROM AppMetadata\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        WHERE pref.enabled = 1 AND categories LIKE \'%,\' || ? || \',%\'"

    const/4 v1, 0x1

    .line 2372
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2375
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2377
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2379
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2380
    invoke-static {p1, v0, v2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 2383
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2384
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2390
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2391
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v2

    .line 2390
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2391
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2392
    throw v1
.end method

.method public getNumberOfAppsInRepository(J)I
    .locals 2

    const-string v0, "SELECT COUNT(*) FROM AppMetadata WHERE repoId = ?"

    const/4 v1, 0x1

    .line 2398
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2400
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2401
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 2402
    invoke-static {p1, v0, v1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 2405
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2406
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 2412
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2413
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 2412
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2413
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2414
    throw p2
.end method

.method public getRepositoryIdsForApp(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT repoId FROM AppMetadata\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        WHERE pref.enabled = 1 AND packageName = ?"

    const/4 v1, 0x1

    .line 1562
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1565
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1567
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1569
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1570
    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1572
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1573
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1575
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_2

    .line 1578
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1580
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1584
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1585
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    .line 1584
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1585
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1586
    throw v1
.end method

.method public insert(JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 630
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 632
    :try_start_0
    invoke-static/range {p0 .. p5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Lorg/fdroid/index/v2/MetadataV2;Landroidx/core/os/LocaleListCompat;)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 633
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 635
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 636
    throw p1
.end method

.method public insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 591
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 592
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__insertionAdapterOfLocalizedFile:Landroidx/room/EntityInsertionAdapter;

    .line 594
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 595
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 597
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 598
    throw p1
.end method

.method public insert(Lorg/fdroid/database/AppMetadata;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 579
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 580
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__insertionAdapterOfAppMetadata:Landroidx/room/EntityInsertionAdapter;

    .line 582
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 583
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 585
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 586
    throw p1
.end method

.method public insertLocalizedFileLists(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFileList;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 603
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 604
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__insertionAdapterOfLocalizedFileList:Landroidx/room/EntityInsertionAdapter;

    .line 606
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 607
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 609
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 610
    throw p1
.end method

.method public updateApp(JLjava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroidx/core/os/LocaleListCompat;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 642
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 644
    :try_start_0
    invoke-static/range {p0 .. p5}, Lorg/fdroid/database/AppDaoInt$DefaultImpls;->updateApp(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroidx/core/os/LocaleListCompat;)V

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 645
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 647
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 648
    throw p1
.end method

.method public updateAppMetadata(Lorg/fdroid/database/AppMetadata;)I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 615
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 617
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__updateAdapterOfAppMetadata:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 619
    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 620
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 623
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 624
    throw p1
.end method

.method public updateAppMetadata(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 707
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 708
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 711
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 713
    :cond_0
    invoke-interface {v0, v1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p4, 0x2

    if-nez p5, :cond_1

    .line 717
    invoke-interface {v0, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 719
    :cond_1
    invoke-interface {v0, p4, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p4, 0x3

    .line 722
    invoke-interface {v0, p4, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x4

    if-nez p3, :cond_2

    .line 725
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 727
    :cond_2
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 730
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 733
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 735
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 738
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 735
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 736
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateAppMetadata:Landroidx/room/SharedSQLiteStatement;

    .line 738
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 739
    throw p1
.end method

.method public updateCompatibility(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 653
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateCompatibility:Landroidx/room/SharedSQLiteStatement;

    .line 654
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 656
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v1, 0x2

    .line 658
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 660
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 663
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 665
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateCompatibility:Landroidx/room/SharedSQLiteStatement;

    .line 668
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 665
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 666
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdateCompatibility:Landroidx/room/SharedSQLiteStatement;

    .line 668
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 669
    throw p1
.end method

.method public updatePreferredSigner(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 675
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdatePreferredSigner:Landroidx/room/SharedSQLiteStatement;

    .line 676
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 679
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 681
    :cond_0
    invoke-interface {v0, v1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p4, 0x2

    .line 684
    invoke-interface {v0, p4, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x3

    if-nez p3, :cond_1

    .line 687
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 689
    :cond_1
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 692
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 695
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 697
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdatePreferredSigner:Landroidx/room/SharedSQLiteStatement;

    .line 700
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 697
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 698
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lorg/fdroid/database/AppDaoInt_Impl;->__preparedStmtOfUpdatePreferredSigner:Landroidx/room/SharedSQLiteStatement;

    .line 700
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 701
    throw p1
.end method
