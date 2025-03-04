.class public final Lorg/fdroid/database/AppKt;
.super Ljava/lang/Object;
.source "App.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0000\u001a:\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c*\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u00102\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0000\u001a,\u0010\u0012\u001a\u00020\u0013*\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0000\u001a@\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000c*\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000c0\u000ej\u0002`\u00152\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0000\u001a&\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0004\u0018\u0001`\u0010*\u0008\u0012\u0004\u0012\u00020\u00170\u000cH\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "toAppMetadata",
        "Lorg/fdroid/database/AppMetadata;",
        "Lorg/fdroid/index/v2/MetadataV2;",
        "repoId",
        "",
        "packageName",
        "",
        "isCompatible",
        "",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "toLocalizedFile",
        "",
        "Lorg/fdroid/database/LocalizedFile;",
        "",
        "Lorg/fdroid/index/v2/FileV2;",
        "Lorg/fdroid/index/v2/LocalizedFileV2;",
        "type",
        "toLocalizedFileList",
        "Lorg/fdroid/database/LocalizedFileList;",
        "locale",
        "Lorg/fdroid/index/v2/LocalizedFileListV2;",
        "toLocalizedFileV2",
        "Lorg/fdroid/database/IFile;",
        "database_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toAppMetadata(Lorg/fdroid/index/v2/MetadataV2;JLjava/lang/String;ZLandroidx/core/os/LocaleListCompat;)Lorg/fdroid/database/AppMetadata;
    .locals 36

    move-object/from16 v0, p5

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v34, p4

    const-string v1, "<this>"

    move-object/from16 v15, p0

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageName"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locales"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v35, Lorg/fdroid/database/AppMetadata;

    move-object/from16 v1, v35

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getAdded()J

    move-result-wide v5

    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getLastUpdated()J

    move-result-wide v7

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getName()Ljava/util/Map;

    move-result-object v9

    .line 100
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getSummary()Ljava/util/Map;

    move-result-object v10

    .line 101
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getDescription()Ljava/util/Map;

    move-result-object v11

    .line 102
    sget-object v13, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getName()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v13, v12, v0}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getSummary()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v13, v14, v0}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getWebSite()Ljava/lang/String;

    move-result-object v14

    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getChangelog()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getLicense()Ljava/lang/String;

    move-result-object v16

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getSourceCode()Ljava/lang/String;

    move-result-object v17

    .line 108
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getIssueTracker()Ljava/lang/String;

    move-result-object v18

    .line 109
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getTranslation()Ljava/lang/String;

    move-result-object v19

    .line 110
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getPreferredSigner()Ljava/lang/String;

    move-result-object v20

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getVideo()Ljava/util/Map;

    move-result-object v21

    .line 112
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getAuthorName()Ljava/lang/String;

    move-result-object v22

    .line 113
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getAuthorEmail()Ljava/lang/String;

    move-result-object v23

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getAuthorWebSite()Ljava/lang/String;

    move-result-object v24

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getAuthorPhone()Ljava/lang/String;

    move-result-object v25

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getDonate()Ljava/util/List;

    move-result-object v26

    .line 117
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getLiberapayID()Ljava/lang/String;

    move-result-object v27

    .line 118
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getLiberapay()Ljava/lang/String;

    move-result-object v28

    .line 119
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getOpenCollective()Ljava/lang/String;

    move-result-object v29

    .line 120
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getBitcoin()Ljava/lang/String;

    move-result-object v30

    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getLitecoin()Ljava/lang/String;

    move-result-object v31

    .line 122
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getFlattrID()Ljava/lang/String;

    move-result-object v32

    .line 123
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2;->getCategories()Ljava/util/List;

    move-result-object v33

    .line 94
    invoke-direct/range {v1 .. v34}, Lorg/fdroid/database/AppMetadata;-><init>(JLjava/lang/String;JJLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v35
.end method

.method public static synthetic toAppMetadata$default(Lorg/fdroid/index/v2/MetadataV2;JLjava/lang/String;ZLandroidx/core/os/LocaleListCompat;ILjava/lang/Object;)Lorg/fdroid/database/AppMetadata;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 93
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-static {p4}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object p5

    const-string p4, "getLocales(...)"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 89
    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppKt;->toAppMetadata(Lorg/fdroid/index/v2/MetadataV2;JLjava/lang/String;ZLandroidx/core/os/LocaleListCompat;)Lorg/fdroid/database/AppMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final toLocalizedFile(Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFile;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/FileV2;

    .line 397
    new-instance v14, Lorg/fdroid/database/LocalizedFile;

    .line 402
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v7

    .line 403
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v9

    .line 405
    invoke-virtual {v1}, Lorg/fdroid/index/v2/FileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v10

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 397
    invoke-direct/range {v1 .. v10}, Lorg/fdroid/database/LocalizedFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 153
    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toLocalizedFileList(Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/LocalizedFileList;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 467
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1549
    new-instance v9, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lorg/fdroid/index/v2/FileV2;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, v2

    .line 468
    invoke-static/range {v3 .. v8}, Lorg/fdroid/database/AppKt;->toLocalizedFileList(Lorg/fdroid/index/v2/FileV2;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/LocalizedFileList;

    move-result-object v3

    .line 1621
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_0
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final toLocalizedFileList(Lorg/fdroid/index/v2/FileV2;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/LocalizedFileList;
    .locals 11

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    new-instance v0, Lorg/fdroid/database/LocalizedFileList;

    .line 481
    invoke-virtual {p0}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v7

    .line 482
    invoke-virtual {p0}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v8

    .line 483
    invoke-virtual {p0}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v9

    .line 484
    invoke-virtual {p0}, Lorg/fdroid/index/v2/FileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v10

    move-object v1, v0

    move-wide v2, p1

    .line 476
    invoke-direct/range {v1 .. v10}, Lorg/fdroid/database/LocalizedFileList;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toLocalizedFileV2(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/fdroid/database/IFile;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1179
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1180
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    check-cast v0, Lorg/fdroid/database/IFile;

    .line 410
    invoke-interface {v0}, Lorg/fdroid/database/IFile;->getLocale()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/fdroid/index/v2/FileV2;

    .line 411
    invoke-interface {v0}, Lorg/fdroid/database/IFile;->getName()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-interface {v0}, Lorg/fdroid/database/IFile;->getSha256()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-interface {v0}, Lorg/fdroid/database/IFile;->getSize()Ljava/lang/Long;

    move-result-object v6

    .line 414
    invoke-interface {v0}, Lorg/fdroid/database/IFile;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-direct {v3, v4, v5, v6, v0}, Lorg/fdroid/index/v2/FileV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 416
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method
