.class public final Lorg/fdroid/database/VersionDaoInt_Impl;
.super Ljava/lang/Object;
.source "VersionDaoInt_Impl.java"

# interfaces
.implements Lorg/fdroid/database/VersionDaoInt;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfVersion:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfVersionedString:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAppVersion:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAppVersion_1:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteVersionedStrings:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteVersionedStrings_1:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfVersion:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ts8RMbUaKm0OWzUzhtr5dYezmNk(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl;->lambda$__fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString$0(Landroidx/collection/ArrayMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__db(Lorg/fdroid/database/VersionDaoInt_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m__VersionedStringType_enumToString(Lorg/fdroid/database/VersionDaoInt_Impl;Lorg/fdroid/database/VersionedStringType;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl;->__VersionedStringType_enumToString(Lorg/fdroid/database/VersionedStringType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m__fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl;->__fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 66
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl$1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl$1;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__insertionAdapterOfVersion:Landroidx/room/EntityInsertionAdapter;

    .line 205
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl$2;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl$2;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__insertionAdapterOfVersionedString:Landroidx/room/EntityInsertionAdapter;

    .line 239
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl$3;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl$3;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__updateAdapterOfVersion:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 389
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl$4;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl$4;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion:Landroidx/room/SharedSQLiteStatement;

    .line 397
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl$5;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl$5;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion_1:Landroidx/room/SharedSQLiteStatement;

    .line 406
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl$6;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl$6;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings:Landroidx/room/SharedSQLiteStatement;

    .line 415
    new-instance v0, Lorg/fdroid/database/VersionDaoInt_Impl$7;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl$7;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings_1:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __VersionedStringType_enumToString(Lorg/fdroid/database/VersionedStringType;)Ljava/lang/String;
    .locals 3

    .line 1774
    sget-object v0, Lorg/fdroid/database/VersionDaoInt_Impl$10;->$SwitchMap$org$fdroid$database$VersionedStringType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "PERMISSION_SDK_23"

    return-object p1

    .line 1777
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert enum to string, unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "PERMISSION"

    return-object p1
.end method

.method private __VersionedStringType_stringToEnum(Ljava/lang/String;)Lorg/fdroid/database/VersionedStringType;
    .locals 3

    .line 1782
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "PERMISSION_SDK_23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PERMISSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    sget-object p1, Lorg/fdroid/database/VersionedStringType;->PERMISSION:Lorg/fdroid/database/VersionedStringType;

    return-object p1

    .line 1785
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert value to enum, unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1784
    :cond_1
    sget-object p1, Lorg/fdroid/database/VersionedStringType;->PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;

    return-object p1
.end method

.method private __fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString(Landroidx/collection/ArrayMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1791
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1792
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 1795
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    if-le v3, v4, :cond_1

    .line 1796
    new-instance v2, Lorg/fdroid/database/VersionDaoInt_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/fdroid/database/VersionDaoInt_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;)V

    invoke-static {v0, v5, v2}, Landroidx/room/util/RelationUtil;->recursiveFetchArrayMap(Landroidx/collection/ArrayMap;ZLkotlin/jvm/functions/Function1;)V

    return-void

    .line 1802
    :cond_1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT `repoId`,`packageName`,`versionId`,`type`,`name`,`version` FROM `VersionedString` WHERE `versionId` IN ("

    .line 1803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    .line 1805
    invoke-static {v3, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v6, ")"

    .line 1806
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1809
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 1814
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

    .line 1816
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1818
    :cond_2
    invoke-virtual {v3, v4, v6}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1823
    invoke-static {v2, v3, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "versionId"

    .line 1825
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    .line 1880
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 1835
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1837
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v6

    goto :goto_3

    .line 1840
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_4

    .line 1843
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 1847
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1849
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v11, v6

    goto :goto_4

    .line 1852
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_4
    const/4 v8, 0x2

    .line 1855
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v6

    goto :goto_5

    .line 1858
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    :goto_5
    const/4 v8, 0x3

    .line 1861
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/fdroid/database/VersionDaoInt_Impl;->__VersionedStringType_stringToEnum(Ljava/lang/String;)Lorg/fdroid/database/VersionedStringType;

    move-result-object v13

    const/4 v8, 0x4

    .line 1863
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v14, v6

    goto :goto_6

    .line 1866
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    :goto_6
    const/4 v8, 0x5

    .line 1869
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object v15, v6

    goto :goto_7

    .line 1872
    :cond_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v15, v8

    .line 1874
    :goto_7
    new-instance v8, Lorg/fdroid/database/VersionedString;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v15}, Lorg/fdroid/database/VersionedString;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1875
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_8

    .line 1880
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1881
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

    .line 1770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$__fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString$0(Landroidx/collection/ArrayMap;)Lkotlin/Unit;
    .locals 0

    .line 1797
    invoke-direct {p0, p1}, Lorg/fdroid/database/VersionDaoInt_Impl;->__fetchRelationshipVersionedStringAsorgFdroidDatabaseVersionedString(Landroidx/collection/ArrayMap;)V

    .line 1798
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public countAppVersions()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM Version"

    const/4 v1, 0x0

    .line 1719
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1720
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 1721
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 1724
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1725
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1731
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1732
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 1731
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1732
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1733
    throw v1
.end method

.method public countVersionedStrings()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM VersionedString"

    const/4 v1, 0x0

    .line 1739
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1740
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    .line 1741
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 1744
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1745
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1751
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1752
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    .line 1751
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1752
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1753
    throw v1
.end method

.method public deleteAppVersion(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 489
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion:Landroidx/room/SharedSQLiteStatement;

    .line 490
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 492
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 495
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 500
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 503
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 505
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion:Landroidx/room/SharedSQLiteStatement;

    .line 508
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 505
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 506
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion:Landroidx/room/SharedSQLiteStatement;

    .line 508
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 509
    throw p1
.end method

.method public deleteAppVersion(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 515
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion_1:Landroidx/room/SharedSQLiteStatement;

    .line 516
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 518
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 521
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 523
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    if-nez p4, :cond_1

    .line 527
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 529
    :cond_1
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 532
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 535
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 537
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion_1:Landroidx/room/SharedSQLiteStatement;

    .line 540
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 537
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 538
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteAppVersion_1:Landroidx/room/SharedSQLiteStatement;

    .line 540
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 541
    throw p1
.end method

.method public deleteVersionedStrings(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 547
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings:Landroidx/room/SharedSQLiteStatement;

    .line 548
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 550
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 553
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    if-nez p4, :cond_1

    .line 559
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 561
    :cond_1
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 564
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 567
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 569
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings:Landroidx/room/SharedSQLiteStatement;

    .line 572
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 569
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 570
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings:Landroidx/room/SharedSQLiteStatement;

    .line 572
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 573
    throw p1
.end method

.method public deleteVersionedStrings(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 579
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings_1:Landroidx/room/SharedSQLiteStatement;

    .line 580
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 582
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    .line 585
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    if-nez p4, :cond_1

    .line 591
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 593
    :cond_1
    invoke-interface {v0, p1, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x4

    .line 596
    invoke-direct {p0, p5}, Lorg/fdroid/database/VersionDaoInt_Impl;->__VersionedStringType_enumToString(Lorg/fdroid/database/VersionedStringType;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 598
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 601
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 603
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings_1:Landroidx/room/SharedSQLiteStatement;

    .line 606
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 603
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 604
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__preparedStmtOfDeleteVersionedStrings_1:Landroidx/room/SharedSQLiteStatement;

    .line 606
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 607
    throw p1
.end method

.method public getAppVersions(JLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "SELECT * FROM Version\n        WHERE repoId = ? AND packageName = ?\n        ORDER BY manifest_versionCode DESC, manifest_nativecode ASC"

    const/4 v1, 0x2

    .line 875
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 877
    invoke-virtual {v0, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez p3, :cond_0

    .line 880
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {v0, v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 884
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string p2, "VersionedString"

    const-string p3, "Version"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/fdroid/database/VersionDaoInt_Impl$9;

    invoke-direct {p3, p0, v0}, Lorg/fdroid/database/VersionDaoInt_Impl$9;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, p2, v2, p3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAppVersions(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    const-string v0, "SELECT `repoId`, `packageName`, `versionId`, `added`, `releaseChannels`, `antiFeatures`, `whatsNew`, `isCompatible`, `file_name`, `file_sha256`, `file_size`, `file_ipfsCidV1`, `src_name`, `src_sha256`, `src_size`, `src_ipfsCidV1`, `manifest_versionName`, `manifest_versionCode`, `manifest_maxSdkVersion`, `manifest_nativecode`, `manifest_features`, `manifest_usesSdk_minSdkVersion`, `manifest_usesSdk_targetSdkVersion`, `manifest_signer_sha256`, `manifest_signer_hasMultipleSigners` FROM (SELECT * FROM Version\n        JOIN RepositoryPreferences AS pref USING (repoId)\n        WHERE pref.enabled = 1 AND packageName = ?\n        ORDER BY manifest_versionCode DESC, pref.weight DESC, manifest_nativecode ASC)"

    const/4 v1, 0x1

    .line 616
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 619
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 623
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    const-string v2, "Version"

    const-string v3, "RepositoryPreferences"

    const-string v4, "VersionedString"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/database/VersionDaoInt_Impl$8;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/database/VersionDaoInt_Impl$8;-><init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVersion(JLjava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Version;
    .locals 49

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    const-string v3, "SELECT * FROM Version\n        WHERE repoId = ? AND packageName = ? AND versionId = ?"

    const/4 v4, 0x3

    .line 1135
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    .line 1137
    invoke-virtual {v3, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v6, 0x2

    if-nez v0, :cond_0

    .line 1140
    invoke-virtual {v3, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1142
    :cond_0
    invoke-virtual {v3, v6, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    .line 1146
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1148
    :cond_1
    invoke-virtual {v3, v4, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1150
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1151
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "repoId"

    .line 1153
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "packageName"

    .line 1154
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "versionId"

    .line 1155
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "added"

    .line 1156
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "releaseChannels"

    .line 1157
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "antiFeatures"

    .line 1158
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "whatsNew"

    .line 1159
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "isCompatible"

    .line 1160
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_name"

    .line 1161
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "file_sha256"

    .line 1162
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "file_size"

    .line 1163
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "file_ipfsCidV1"

    .line 1164
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "src_name"

    .line 1165
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "src_sha256"

    .line 1166
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "src_size"

    .line 1167
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p3, v3

    const-string v3, "src_ipfsCidV1"

    .line 1168
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p4, v3

    const-string v3, "manifest_versionName"

    .line 1169
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "manifest_versionCode"

    .line 1170
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "manifest_maxSdkVersion"

    .line 1171
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "manifest_nativecode"

    .line 1172
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "manifest_features"

    .line 1173
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "manifest_usesSdk_minSdkVersion"

    .line 1174
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "manifest_usesSdk_targetSdkVersion"

    .line 1175
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "manifest_signer_sha256"

    .line 1176
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "manifest_signer_hasMultipleSigners"

    .line 1177
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1179
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 1181
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 1183
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v29, 0x0

    goto :goto_2

    .line 1186
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    .line 1189
    :goto_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v30, 0x0

    goto :goto_3

    .line 1192
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v30, v0

    .line 1195
    :goto_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1198
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 1201
    :cond_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1203
    :goto_4
    sget-object v7, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v36

    .line 1206
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    .line 1209
    :cond_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1211
    :goto_5
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToMapOfLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v37

    .line 1214
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 1217
    :cond_6
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1219
    :goto_6
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v38

    .line 1222
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v39, 0x1

    goto :goto_7

    :cond_7
    const/16 v39, 0x0

    .line 1226
    :goto_7
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    .line 1229
    :cond_8
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1232
    :goto_8
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_9

    .line 1235
    :cond_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1238
    :goto_9
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    .line 1241
    :cond_a
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1244
    :goto_a
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x0

    goto :goto_b

    .line 1247
    :cond_b
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1249
    :goto_b
    new-instance v9, Lorg/fdroid/index/v2/FileV1;

    invoke-direct {v9, v0, v8, v2, v4}, Lorg/fdroid/index/v2/FileV1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1251
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v0, p3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move/from16 v2, p4

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_d

    :cond_c
    move/from16 v0, v17

    const/16 v34, 0x0

    goto :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    :cond_d
    :goto_c
    move/from16 v2, p4

    goto :goto_d

    :cond_e
    move/from16 v0, p3

    goto :goto_c

    .line 1253
    :goto_d
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto :goto_e

    .line 1256
    :cond_f
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1259
    :goto_e
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v1, 0x0

    goto :goto_f

    .line 1262
    :cond_10
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1265
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v0, 0x0

    goto :goto_10

    .line 1268
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1271
    :goto_10
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v2, 0x0

    goto :goto_11

    .line 1274
    :cond_12
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1276
    :goto_11
    new-instance v5, Lorg/fdroid/index/v2/FileV2;

    invoke-direct {v5, v4, v1, v0, v2}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move-object/from16 v34, v5

    move/from16 v0, v17

    .line 1282
    :goto_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move/from16 v0, v18

    const/16 v41, 0x0

    goto :goto_13

    .line 1285
    :cond_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v41, v0

    move/from16 v0, v18

    .line 1288
    :goto_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move/from16 v0, v19

    .line 1290
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move/from16 v0, v20

    const/16 v45, 0x0

    goto :goto_14

    .line 1293
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v45, v0

    move/from16 v0, v20

    .line 1297
    :goto_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15

    .line 1300
    :cond_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1302
    :goto_15
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v47

    move/from16 v0, v21

    .line 1305
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    .line 1308
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1310
    :goto_16
    invoke-virtual {v7, v0}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move/from16 v0, v22

    .line 1312
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v1, v23

    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_17

    :cond_17
    move/from16 v0, v24

    const/16 v44, 0x0

    goto :goto_18

    :cond_18
    move/from16 v1, v23

    .line 1314
    :goto_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1316
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1317
    new-instance v2, Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-direct {v2, v0, v1}, Lorg/fdroid/index/v2/UsesSdkV2;-><init>(II)V

    move-object/from16 v44, v2

    move/from16 v0, v24

    .line 1322
    :goto_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_19

    :cond_19
    const/16 v46, 0x0

    goto :goto_1c

    .line 1325
    :cond_1a
    :goto_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v4, 0x0

    goto :goto_1a

    .line 1328
    :cond_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1330
    :goto_1a
    invoke-virtual {v7, v4}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1333
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v5, 0x1

    goto :goto_1b

    :cond_1c
    const/4 v5, 0x0

    .line 1335
    :goto_1b
    new-instance v4, Lorg/fdroid/index/v2/SignerV2;

    invoke-direct {v4, v0, v5}, Lorg/fdroid/index/v2/SignerV2;-><init>(Ljava/util/List;Z)V

    move-object/from16 v46, v4

    .line 1339
    :goto_1c
    new-instance v35, Lorg/fdroid/database/AppManifest;

    move-object/from16 v40, v35

    invoke-direct/range {v40 .. v48}, Lorg/fdroid/database/AppManifest;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V

    .line 1340
    new-instance v4, Lorg/fdroid/database/Version;

    move-object/from16 v26, v4

    move-object/from16 v33, v9

    invoke-direct/range {v26 .. v39}, Lorg/fdroid/database/Version;-><init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1d

    :cond_1d
    const/4 v4, 0x0

    .line 1346
    :goto_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1347
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1346
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1347
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1348
    throw v0
.end method

.method public getVersionedStrings(JLjava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "SELECT * FROM VersionedString\n        WHERE repoId = ? AND packageName = ?"

    const/4 v3, 0x2

    .line 1587
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    move-wide/from16 v5, p1

    .line 1589
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez v0, :cond_0

    .line 1592
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1594
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1596
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1597
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "repoId"

    .line 1599
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "packageName"

    .line 1600
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "versionId"

    .line 1601
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "type"

    .line 1602
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "name"

    .line 1603
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "version"

    .line 1604
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1605
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1606
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1609
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1611
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v15, v4

    goto :goto_2

    .line 1614
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    .line 1617
    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v16, v4

    goto :goto_3

    .line 1620
    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    .line 1623
    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/fdroid/database/VersionDaoInt_Impl;->__VersionedStringType_stringToEnum(Ljava/lang/String;)Lorg/fdroid/database/VersionedStringType;

    move-result-object v17

    .line 1625
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v18, v4

    goto :goto_4

    .line 1628
    :cond_3
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    .line 1631
    :goto_4
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v19, v4

    goto :goto_5

    .line 1634
    :cond_4
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v19, v11

    .line 1636
    :goto_5
    new-instance v11, Lorg/fdroid/database/VersionedString;

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Lorg/fdroid/database/VersionedString;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1637
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1641
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1642
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    .line 1641
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1642
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1643
    throw v0
.end method

.method public getVersionedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    const-string v3, "SELECT * FROM VersionedString\n        WHERE repoId = ? AND packageName = ? AND versionId = ?"

    const/4 v4, 0x3

    .line 1651
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    .line 1653
    invoke-virtual {v3, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v5, 0x2

    if-nez v0, :cond_0

    .line 1656
    invoke-virtual {v3, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1658
    :cond_0
    invoke-virtual {v3, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    .line 1662
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1664
    :cond_1
    invoke-virtual {v3, v4, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1666
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1667
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "repoId"

    .line 1669
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "packageName"

    .line 1670
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "versionId"

    .line 1671
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "type"

    .line 1672
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "name"

    .line 1673
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "version"

    .line 1674
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1675
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1676
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1679
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1681
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v15, v4

    goto :goto_3

    .line 1684
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    .line 1687
    :goto_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v16, v4

    goto :goto_4

    .line 1690
    :cond_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    .line 1693
    :goto_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/fdroid/database/VersionDaoInt_Impl;->__VersionedStringType_stringToEnum(Ljava/lang/String;)Lorg/fdroid/database/VersionedStringType;

    move-result-object v17

    .line 1695
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v18, v4

    goto :goto_5

    .line 1698
    :cond_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    .line 1701
    :goto_5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v19, v4

    goto :goto_6

    .line 1704
    :cond_5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v19, v11

    .line 1706
    :goto_6
    new-instance v11, Lorg/fdroid/database/VersionedString;

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Lorg/fdroid/database/VersionedString;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1707
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 1711
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1712
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    .line 1711
    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1712
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1713
    throw v0
.end method

.method public getVersions(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Version;",
            ">;"
        }
    .end annotation

    .line 1765
    invoke-static {p0, p1}, Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->getVersions(Lorg/fdroid/database/VersionDaoInt;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getVersionsInternal(Ljava/util/List;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Version;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1353
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SELECT `repoId`, `packageName`, `versionId`, `added`, `releaseChannels`, `antiFeatures`, `whatsNew`, `isCompatible`, `file_name`, `file_sha256`, `file_size`, `file_ipfsCidV1`, `src_name`, `src_sha256`, `src_size`, `src_ipfsCidV1`, `manifest_versionName`, `manifest_versionCode`, `manifest_maxSdkVersion`, `manifest_nativecode`, `manifest_features`, `manifest_usesSdk_minSdkVersion`, `manifest_usesSdk_targetSdkVersion`, `manifest_signer_sha256`, `manifest_signer_hasMultipleSigners` FROM (SELECT * FROM Version"

    .line 1354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        JOIN RepositoryPreferences AS pref USING (repoId)"

    .line 1356
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        LEFT JOIN AppPrefs AS appPrefs USING (packageName)"

    .line 1358
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        WHERE pref.enabled = 1 AND"

    .line 1360
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "              manifest_versionCode > COALESCE(appPrefs.ignoreVersionCodeUpdate, 0) AND"

    .line 1362
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "              packageName IN ("

    .line 1364
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1366
    invoke-static {v0, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 1367
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        ORDER BY manifest_versionCode DESC, pref.weight DESC)"

    .line 1369
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 1374
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1376
    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1378
    :cond_0
    invoke-virtual {v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1382
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1383
    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 1410
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1414
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1416
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v11, v5

    goto :goto_3

    .line 1419
    :cond_2
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    :goto_3
    const/4 v7, 0x2

    .line 1422
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v12, v5

    goto :goto_4

    .line 1425
    :cond_3
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    :goto_4
    const/4 v7, 0x3

    .line 1428
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v7, 0x4

    .line 1431
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v5

    goto :goto_5

    .line 1434
    :cond_4
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1436
    :goto_5
    sget-object v8, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    invoke-virtual {v8, v7}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    const/4 v7, 0x5

    .line 1439
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v7, v5

    goto :goto_6

    .line 1442
    :cond_5
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1444
    :goto_6
    invoke-virtual {v8, v7}, Lorg/fdroid/database/Converters;->fromStringToMapOfLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v19

    const/4 v7, 0x6

    .line 1447
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v7, v5

    goto :goto_7

    .line 1450
    :cond_6
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1452
    :goto_7
    invoke-virtual {v8, v7}, Lorg/fdroid/database/Converters;->fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    const/4 v7, 0x7

    .line 1455
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_7

    move/from16 v21, v3

    goto :goto_8

    :cond_7
    move/from16 v21, v4

    :goto_8
    const/16 v7, 0x8

    .line 1459
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v7, v5

    goto :goto_9

    .line 1462
    :cond_8
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_9
    const/16 v15, 0x9

    .line 1465
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object v15, v5

    goto :goto_a

    .line 1468
    :cond_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_a
    const/16 v3, 0xa

    .line 1471
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object v3, v5

    goto :goto_b

    .line 1474
    :cond_a
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_b
    const/16 v4, 0xb

    .line 1477
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object v4, v5

    goto :goto_c

    .line 1480
    :cond_b
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1482
    :goto_c
    new-instance v5, Lorg/fdroid/index/v2/FileV1;

    invoke-direct {v5, v7, v15, v3, v4}, Lorg/fdroid/index/v2/FileV1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    const/16 v3, 0xc

    .line 1484
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const/16 v7, 0xf

    const/16 v15, 0xe

    const/16 v3, 0xd

    if-eqz v4, :cond_c

    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    const/16 v4, 0xc

    goto :goto_d

    :cond_d
    const/16 v16, 0x0

    goto :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_1d

    .line 1486
    :goto_d
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_e

    const/4 v4, 0x0

    goto :goto_e

    .line 1489
    :cond_e
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1492
    :goto_e
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_f

    const/4 v3, 0x0

    goto :goto_f

    .line 1495
    :cond_f
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1498
    :goto_f
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_10

    const/4 v15, 0x0

    goto :goto_10

    .line 1501
    :cond_10
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1504
    :goto_10
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_11

    const/4 v7, 0x0

    goto :goto_11

    .line 1507
    :cond_11
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1509
    :goto_11
    new-instance v1, Lorg/fdroid/index/v2/FileV2;

    invoke-direct {v1, v4, v3, v15, v7}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_12
    const/16 v1, 0x10

    .line 1515
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v23, 0x0

    goto :goto_13

    .line 1518
    :cond_12
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    :goto_13
    const/16 v1, 0x11

    .line 1521
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/16 v1, 0x12

    .line 1523
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v27, 0x0

    goto :goto_14

    .line 1526
    :cond_13
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v27, v1

    :goto_14
    const/16 v1, 0x13

    .line 1530
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    .line 1533
    :cond_14
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1535
    :goto_15
    invoke-virtual {v8, v1}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    const/16 v1, 0x14

    .line 1538
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x0

    goto :goto_16

    .line 1541
    :cond_15
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1543
    :goto_16
    invoke-virtual {v8, v1}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v30

    const/16 v1, 0x15

    .line 1545
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v3, 0x16

    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_17

    :cond_16
    const/16 v26, 0x0

    goto :goto_18

    .line 1547
    :cond_17
    :goto_17
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0x16

    .line 1549
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1550
    new-instance v4, Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-direct {v4, v1, v3}, Lorg/fdroid/index/v2/UsesSdkV2;-><init>(II)V

    move-object/from16 v26, v4

    :goto_18
    const/16 v1, 0x17

    .line 1555
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x18

    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_19

    :cond_18
    const/16 v28, 0x0

    goto :goto_1c

    .line 1558
    :cond_19
    :goto_19
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v1, 0x0

    goto :goto_1a

    .line 1561
    :cond_1a
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1563
    :goto_1a
    invoke-virtual {v8, v1}, Lorg/fdroid/database/Converters;->fromStringToListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v3, 0x18

    .line 1566
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v3, 0x0

    .line 1568
    :goto_1b
    new-instance v4, Lorg/fdroid/index/v2/SignerV2;

    invoke-direct {v4, v1, v3}, Lorg/fdroid/index/v2/SignerV2;-><init>(Ljava/util/List;Z)V

    move-object/from16 v28, v4

    .line 1572
    :goto_1c
    new-instance v17, Lorg/fdroid/database/AppManifest;

    move-object/from16 v22, v17

    invoke-direct/range {v22 .. v30}, Lorg/fdroid/database/AppManifest;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V

    .line 1573
    new-instance v1, Lorg/fdroid/database/Version;

    move-object v8, v1

    move-object v15, v5

    invoke-direct/range {v8 .. v21}, Lorg/fdroid/database/Version;-><init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 1574
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1578
    :cond_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1579
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    .line 1578
    :goto_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1579
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1580
    throw v0
.end method

.method public insert(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/index/v2/PackageVersionV2;Z)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 478
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 480
    :try_start_0
    invoke-static/range {p0 .. p6}, Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/VersionDaoInt;JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/index/v2/PackageVersionV2;Z)V

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 481
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 483
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 484
    throw p1
.end method

.method public insert(JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/PackageVersionV2;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 466
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 468
    :try_start_0
    invoke-static/range {p0 .. p5}, Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->insert(Lorg/fdroid/database/VersionDaoInt;JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 469
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 471
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 472
    throw p1
.end method

.method public insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 440
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 441
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__insertionAdapterOfVersionedString:Landroidx/room/EntityInsertionAdapter;

    .line 443
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 444
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 446
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 447
    throw p1
.end method

.method public insert(Lorg/fdroid/database/Version;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 428
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 429
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__insertionAdapterOfVersion:Landroidx/room/EntityInsertionAdapter;

    .line 431
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 432
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 434
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 435
    throw p1
.end method

.method public update(JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonObject;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1760
    invoke-static/range {p0 .. p5}, Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->update(Lorg/fdroid/database/VersionDaoInt;JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public update(Lorg/fdroid/database/Version;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 452
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 453
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__updateAdapterOfVersion:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 455
    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 456
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 458
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 459
    throw p1
.end method
