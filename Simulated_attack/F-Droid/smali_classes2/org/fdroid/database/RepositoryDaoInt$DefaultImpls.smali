.class public final Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;
.super Ljava/lang/Object;
.source "RepositoryDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/RepositoryDaoInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static clear(Lorg/fdroid/database/RepositoryDaoInt;J)V
    .locals 2

    .line 511
    invoke-interface {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getRepository$database_release()Lorg/fdroid/database/CoreRepository;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insertOrReplace(Lorg/fdroid/database/CoreRepository;)J

    return-void

    .line 511
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repo with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearAll(Lorg/fdroid/database/RepositoryDaoInt;)V
    .locals 0

    .line 518
    invoke-interface {p0}, Lorg/fdroid/database/RepositoryDaoInt;->deleteAllCoreRepositories()V

    .line 519
    invoke-interface {p0}, Lorg/fdroid/database/RepositoryDaoInt;->deleteAllRepositoryPreferences()V

    return-void
.end method

.method public static deleteRepository(Lorg/fdroid/database/RepositoryDaoInt;J)V
    .locals 0

    .line 425
    invoke-interface {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->deleteCoreRepository(J)V

    .line 428
    invoke-interface {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->deleteRepositoryPreferences(J)V

    .line 431
    invoke-interface {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->resetPreferredRepoInAppPrefs(J)V

    return-void
.end method

.method public static insert(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/InitialRepository;)J
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "initialRepo"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/InitialRepository;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "en-US"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 121
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/InitialRepository;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/InitialRepository;->getVersion()J

    move-result-wide v4

    .line 127
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/InitialRepository;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v16

    .line 128
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/InitialRepository;->getCertificate()Ljava/lang/String;

    move-result-object v17

    .line 119
    new-instance v1, Lorg/fdroid/database/CoreRepository;

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v12, -0x1

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x11

    const/16 v20, 0x0

    move-object v4, v1

    move-wide v5, v10

    move-object v10, v3

    move-wide v11, v12

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    .line 119
    invoke-direct/range {v4 .. v19}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    invoke-interface {v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->insertOrReplace(Lorg/fdroid/database/CoreRepository;)J

    move-result-wide v3

    .line 131
    invoke-interface/range {p0 .. p0}, Lorg/fdroid/database/RepositoryDaoInt;->getMinRepositoryWeight()I

    move-result v1

    add-int/lit8 v24, v1, -0x2

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/InitialRepository;->getEnabled()Z

    move-result v25

    .line 132
    new-instance v1, Lorg/fdroid/database/RepositoryPreferences;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1f0

    const/16 v33, 0x0

    move-object/from16 v21, v1

    move-wide/from16 v22, v3

    invoke-direct/range {v21 .. v33}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    invoke-interface {v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->insert(Lorg/fdroid/database/RepositoryPreferences;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/InitialRepository;->getMirrors()Ljava/util/List;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Ljava/lang/String;

    .line 139
    new-instance v6, Lorg/fdroid/database/Mirror;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v5, v7}, Lorg/fdroid/database/Mirror;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {v0, v2}, Lorg/fdroid/database/RepositoryDaoInt;->insertMirrors(Ljava/util/List;)V

    return-wide v3
.end method

.method public static insert(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/NewRepository;)J
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "newRepository"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v1, Lorg/fdroid/database/CoreRepository;

    const-wide/16 v4, 0x0

    .line 146
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/NewRepository;->getName()Ljava/util/Map;

    move-result-object v6

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/NewRepository;->getIcon()Ljava/util/Map;

    move-result-object v7

    .line 148
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/NewRepository;->getAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    .line 151
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/NewRepository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 153
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/NewRepository;->getCertificate()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x211

    const/16 v18, 0x0

    move-object v3, v1

    .line 145
    invoke-direct/range {v3 .. v18}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    invoke-interface {v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->insertOrReplace(Lorg/fdroid/database/CoreRepository;)J

    move-result-wide v3

    .line 156
    invoke-interface/range {p0 .. p0}, Lorg/fdroid/database/RepositoryDaoInt;->getMinRepositoryWeight()I

    move-result v1

    .line 157
    new-instance v5, Lorg/fdroid/database/RepositoryPreferences;

    add-int/lit8 v22, v1, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 161
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/NewRepository;->getUsername()Ljava/lang/String;

    move-result-object v28

    .line 162
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/NewRepository;->getPassword()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x74

    const/16 v31, 0x0

    move-object/from16 v19, v5

    move-wide/from16 v20, v3

    .line 157
    invoke-direct/range {v19 .. v31}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 164
    invoke-interface {v0, v5}, Lorg/fdroid/database/RepositoryDaoInt;->insert(Lorg/fdroid/database/RepositoryPreferences;)V

    return-wide v3
.end method

.method public static insertEmptyRepo(Lorg/fdroid/database/RepositoryDaoInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const-string v1, "address"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "certificate"

    move-object/from16 v14, p4

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v15, Lorg/fdroid/database/CoreRepository;

    const-wide/16 v2, 0x0

    const-string v1, "en-US"

    .line 178
    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x211

    const/16 v17, 0x0

    move-object v1, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    .line 177
    invoke-direct/range {v1 .. v16}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    .line 187
    invoke-interface {v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->insertOrReplace(Lorg/fdroid/database/CoreRepository;)J

    move-result-wide v15

    .line 188
    invoke-interface/range {p0 .. p0}, Lorg/fdroid/database/RepositoryDaoInt;->getMinRepositoryWeight()I

    move-result v1

    .line 189
    new-instance v14, Lorg/fdroid/database/RepositoryPreferences;

    add-int/lit8 v5, v1, -0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x74

    const/4 v1, 0x0

    move-object v2, v14

    move-wide v3, v15

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide/from16 v17, v15

    move-object v15, v14

    move-object v14, v1

    invoke-direct/range {v2 .. v14}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 196
    invoke-interface {v0, v15}, Lorg/fdroid/database/RepositoryDaoInt;->insert(Lorg/fdroid/database/RepositoryPreferences;)V

    return-wide v17
.end method

.method public static synthetic insertEmptyRepo$default(Lorg/fdroid/database/RepositoryDaoInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)J
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const-string p4, "6789"

    .line 171
    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/fdroid/database/RepositoryDaoInt;->insertEmptyRepo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: insertEmptyRepo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static insertOrReplace(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/index/v2/RepoV2;J)J
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    const-string v1, "repository"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const-string v7, "0123"

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v4, p2

    .line 204
    invoke-static/range {v1 .. v9}, Lorg/fdroid/database/RepositoryKt;->toCoreRepository$default(Lorg/fdroid/index/v2/RepoV2;JJLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/CoreRepository;

    move-result-object v1

    .line 203
    invoke-interface {v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->insertOrReplace(Lorg/fdroid/database/CoreRepository;)J

    move-result-wide v1

    .line 209
    invoke-interface/range {p0 .. p0}, Lorg/fdroid/database/RepositoryDaoInt;->getMinRepositoryWeight()I

    move-result v3

    .line 210
    new-instance v4, Lorg/fdroid/database/RepositoryPreferences;

    add-int/lit8 v14, v3, -0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1fc

    const/16 v23, 0x0

    move-object v11, v4

    move-wide v12, v1

    invoke-direct/range {v11 .. v23}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    invoke-interface {v0, v4}, Lorg/fdroid/database/RepositoryDaoInt;->insert(Lorg/fdroid/database/RepositoryPreferences;)V

    .line 212
    invoke-static {v0, v1, v2, v10}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->insertRepoTables(Lorg/fdroid/database/RepositoryDaoInt;JLorg/fdroid/index/v2/RepoV2;)V

    return-wide v1
.end method

.method public static synthetic insertOrReplace$default(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/index/v2/RepoV2;JILjava/lang/Object;)J
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 202
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lorg/fdroid/database/RepositoryDaoInt;->insertOrReplace(Lorg/fdroid/index/v2/RepoV2;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: insertOrReplace"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static insertRepoTables(Lorg/fdroid/database/RepositoryDaoInt;JLorg/fdroid/index/v2/RepoV2;)V
    .locals 3

    .line 276
    invoke-virtual {p3}, Lorg/fdroid/index/v2/RepoV2;->getMirrors()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lorg/fdroid/index/v2/MirrorV2;

    .line 276
    invoke-static {v2, p1, p2}, Lorg/fdroid/database/RepositoryKt;->toMirror(Lorg/fdroid/index/v2/MirrorV2;J)Lorg/fdroid/database/Mirror;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    invoke-interface {p0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->insertMirrors(Ljava/util/List;)V

    .line 277
    invoke-virtual {p3}, Lorg/fdroid/index/v2/RepoV2;->getAntiFeatures()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/fdroid/database/RepositoryKt;->toRepoAntiFeatures(Ljava/util/Map;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/fdroid/database/RepositoryDaoInt;->insertAntiFeatures(Ljava/util/List;)V

    .line 278
    invoke-virtual {p3}, Lorg/fdroid/index/v2/RepoV2;->getCategories()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/fdroid/database/RepositoryKt;->toRepoCategories(Ljava/util/Map;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/fdroid/database/RepositoryDaoInt;->insertCategories(Ljava/util/List;)V

    .line 279
    invoke-virtual {p3}, Lorg/fdroid/index/v2/RepoV2;->getReleaseChannels()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lorg/fdroid/database/RepositoryKt;->toRepoReleaseChannel(Ljava/util/Map;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insertReleaseChannels(Ljava/util/List;)V

    return-void
.end method

.method public static reorderRepositories(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V
    .locals 3

    const-string v0, "repoToReorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoTarget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->isArchiveRepo()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->isArchiveRepo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 389
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v0

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 392
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {p0, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt;->shiftRepoWeights(III)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v0

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 395
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v1

    const/4 v2, -0x2

    invoke-interface {p0, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt;->shiftRepoWeights(III)V

    .line 400
    :goto_0
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt;->setWeight(JI)V

    .line 402
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->getArchiveRepoId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, v0, v1, p1}, Lorg/fdroid/database/RepositoryDaoInt;->setWeight(JI)V

    :cond_1
    return-void

    .line 386
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Re-ordering of archive repos is not supported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setRepositoryEnabled(Lorg/fdroid/database/RepositoryDaoInt;JZ)V
    .locals 0

    if-nez p3, :cond_0

    .line 348
    invoke-interface {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->resetPreferredRepoInAppPrefs(J)V

    .line 349
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lorg/fdroid/database/RepositoryDaoInt;->setRepositoryEnabledInternal(JZ)V

    return-void
.end method

.method public static update(Lorg/fdroid/database/RepositoryDaoInt;JLorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;)V
    .locals 8

    const-string v0, "repository"

    .line 270
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatVersion"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v7

    move-object v1, p3

    move-wide v2, p1

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v1 .. v7}, Lorg/fdroid/database/RepositoryKt;->toCoreRepository(Lorg/fdroid/index/v2/RepoV2;JJLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;)Lorg/fdroid/database/CoreRepository;

    move-result-object p4

    invoke-interface {p0, p4}, Lorg/fdroid/database/RepositoryDaoInt;->update(Lorg/fdroid/database/CoreRepository;)V

    .line 272
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->insertRepoTables(Lorg/fdroid/database/RepositoryDaoInt;JLorg/fdroid/index/v2/RepoV2;)V

    return-void

    .line 270
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Repo with id "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " did not exist"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateRepository(Lorg/fdroid/database/RepositoryDaoInt;JJLkotlinx/serialization/json/JsonObject;)V
    .locals 33

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v15, p5

    const-string v3, "jsonObject"

    .line 294
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p2}, Lorg/fdroid/database/RepositoryDaoInt;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 296
    sget-object v3, Lorg/fdroid/index/v2/ReflectionDiffer;->INSTANCE:Lorg/fdroid/index/v2/ReflectionDiffer;

    invoke-virtual/range {v16 .. v16}, Lorg/fdroid/database/Repository;->getRepository$database_release()Lorg/fdroid/database/CoreRepository;

    move-result-object v4

    invoke-virtual {v3, v4, v15}, Lorg/fdroid/index/v2/ReflectionDiffer;->applyDiff(Ljava/lang/Object;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lorg/fdroid/database/CoreRepository;

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x7bf

    const/16 v32, 0x0

    invoke-static/range {v17 .. v32}, Lorg/fdroid/database/CoreRepository;->copy$default(Lorg/fdroid/database/CoreRepository;JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/CoreRepository;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/fdroid/database/RepositoryDaoInt;->updateRepository(Lorg/fdroid/database/CoreRepository;)I

    .line 298
    sget-object v17, Lorg/fdroid/database/DbDiffUtils;->INSTANCE:Lorg/fdroid/database/DbDiffUtils;

    const-string v5, "mirrors"

    new-instance v6, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$1;

    invoke-direct {v6, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$1;-><init>(J)V

    new-instance v7, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;

    invoke-direct {v7, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$2;-><init>(Lorg/fdroid/database/RepositoryDaoInt;J)V

    new-instance v8, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$3;

    invoke-direct {v8, v0}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$3;-><init>(Lorg/fdroid/database/RepositoryDaoInt;)V

    move-object/from16 v3, v17

    move-object/from16 v4, p5

    invoke-virtual/range {v3 .. v8}, Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateListTable(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const-string v5, "antiFeatures"

    .line 313
    invoke-virtual/range {v16 .. v16}, Lorg/fdroid/database/Repository;->getAntiFeatures$database_release()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$4;->INSTANCE:Lorg/fdroid/database/RepositoryDaoInt$updateRepository$4;

    .line 310
    new-instance v8, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$5;

    invoke-direct {v8, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$5;-><init>(J)V

    new-instance v9, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$6;

    invoke-direct {v9, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$6;-><init>(Lorg/fdroid/database/RepositoryDaoInt;J)V

    new-instance v10, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;

    invoke-direct {v10, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$7;-><init>(Lorg/fdroid/database/RepositoryDaoInt;J)V

    new-instance v11, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$8;

    invoke-direct {v11, v0}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$8;-><init>(Lorg/fdroid/database/RepositoryDaoInt;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x300

    const/16 v18, 0x0

    move-object/from16 v15, v18

    invoke-static/range {v3 .. v15}, Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateTable$default(Lorg/fdroid/database/DbDiffUtils;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILjava/lang/Object;)V

    const-string v5, "categories"

    .line 324
    invoke-virtual/range {v16 .. v16}, Lorg/fdroid/database/Repository;->getCategories$database_release()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$9;->INSTANCE:Lorg/fdroid/database/RepositoryDaoInt$updateRepository$9;

    .line 321
    new-instance v8, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$10;

    invoke-direct {v8, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$10;-><init>(J)V

    new-instance v9, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$11;

    invoke-direct {v9, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$11;-><init>(Lorg/fdroid/database/RepositoryDaoInt;J)V

    new-instance v10, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$12;

    invoke-direct {v10, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$12;-><init>(Lorg/fdroid/database/RepositoryDaoInt;J)V

    new-instance v11, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$13;

    invoke-direct {v11, v0}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$13;-><init>(Lorg/fdroid/database/RepositoryDaoInt;)V

    const/4 v15, 0x0

    invoke-static/range {v3 .. v15}, Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateTable$default(Lorg/fdroid/database/DbDiffUtils;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILjava/lang/Object;)V

    const-string v3, "releaseChannels"

    .line 335
    invoke-virtual/range {v16 .. v16}, Lorg/fdroid/database/Repository;->getReleaseChannels$database_release()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;->INSTANCE:Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;

    .line 332
    new-instance v6, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$15;

    invoke-direct {v6, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$15;-><init>(J)V

    new-instance v7, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$16;

    invoke-direct {v7, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$16;-><init>(Lorg/fdroid/database/RepositoryDaoInt;J)V

    new-instance v8, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$17;

    invoke-direct {v8, v0, v1, v2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$17;-><init>(Lorg/fdroid/database/RepositoryDaoInt;J)V

    new-instance v9, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$18;

    invoke-direct {v9, v0}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$18;-><init>(Lorg/fdroid/database/RepositoryDaoInt;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x300

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    invoke-static/range {v0 .. v12}, Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateTable$default(Lorg/fdroid/database/DbDiffUtils;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILjava/lang/Object;)V

    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
