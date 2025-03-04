.class public final Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;
.super Ljava/lang/Object;
.source "RepoV2StreamReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/repo/RepoV2StreamReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ:\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;",
        "",
        "()V",
        "getAppOverViewItem",
        "Lorg/fdroid/database/AppOverviewItem;",
        "packageName",
        "",
        "p",
        "Lorg/fdroid/index/v2/PackageV2;",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "getRepository",
        "Lorg/fdroid/database/Repository;",
        "repo",
        "Lorg/fdroid/index/v2/RepoV2;",
        "version",
        "",
        "formatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "certificate",
        "username",
        "password",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppOverViewItem(Ljava/lang/String;Lorg/fdroid/index/v2/PackageV2;Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/database/AppOverviewItem;
    .locals 23

    move-object/from16 v0, p3

    const-string v1, "packageName"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locales"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/index/v2/PackageV2;->getMetadata()Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/index/v2/MetadataV2;->getAdded()J

    move-result-wide v15

    .line 60
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/index/v2/PackageV2;->getMetadata()Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/index/v2/MetadataV2;->getLastUpdated()J

    move-result-wide v17

    .line 61
    sget-object v1, Lorg/fdroid/LocaleChooser;->INSTANCE:Lorg/fdroid/LocaleChooser;

    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/index/v2/PackageV2;->getMetadata()Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fdroid/index/v2/MetadataV2;->getName()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    .line 62
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/index/v2/PackageV2;->getMetadata()Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fdroid/index/v2/MetadataV2;->getSummary()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/fdroid/LocaleChooser;->getBestLocale(Ljava/util/Map;Landroidx/core/os/LocaleListCompat;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/index/v2/PackageV2;->getVersions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/PackageVersionV2;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fdroid/index/v2/PackageVersionV2;->getAntiFeatures()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 64
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/fdroid/index/v2/PackageV2;->getMetadata()Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fdroid/index/v2/MetadataV2;->getIcon()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 125
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v2/FileV2;

    .line 65
    new-instance v10, Lorg/fdroid/database/LocalizedIcon;

    const-wide/16 v3, 0x0

    const-string v6, "icon"

    .line 70
    invoke-virtual {v2}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v8

    .line 71
    invoke-virtual {v2}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v9

    .line 72
    invoke-virtual {v2}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v21

    .line 73
    invoke-virtual {v2}, Lorg/fdroid/index/v2/FileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v22

    move-object v2, v10

    move-object/from16 v5, p1

    move-object v13, v10

    move-object/from16 v10, v21

    move-object v14, v11

    move-object/from16 v11, v22

    .line 65
    invoke-direct/range {v2 .. v11}, Lorg/fdroid/database/LocalizedIcon;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 153
    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v11, v14

    goto :goto_1

    :cond_1
    move-object v14, v11

    move-object v13, v14

    goto :goto_2

    :cond_2
    move-object v13, v3

    :goto_2
    const/4 v14, 0x1

    .line 56
    new-instance v20, Lorg/fdroid/database/AppOverviewItem;

    move-object/from16 v2, v20

    const-wide/16 v3, 0x0

    move-object/from16 v5, p1

    move-wide v6, v15

    move-wide/from16 v8, v17

    move-object/from16 v10, v19

    move-object v11, v0

    move-object v12, v1

    invoke-direct/range {v2 .. v14}, Lorg/fdroid/database/AppOverviewItem;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v20
.end method

.method public final getRepository(Lorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;
    .locals 20

    const-string v0, "repo"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatVersion"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lorg/fdroid/database/Repository;

    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v4, p2

    .line 34
    invoke-static/range {v1 .. v9}, Lorg/fdroid/database/RepositoryKt;->toCoreRepository$default(Lorg/fdroid/index/v2/RepoV2;JJLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/CoreRepository;

    move-result-object v1

    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/index/v2/RepoV2;->getAntiFeatures()Ljava/util/Map;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lorg/fdroid/database/RepositoryKt;->toRepoAntiFeatures(Ljava/util/Map;J)Ljava/util/List;

    move-result-object v3

    .line 41
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/index/v2/RepoV2;->getCategories()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lorg/fdroid/database/RepositoryKt;->toRepoCategories(Ljava/util/Map;J)Ljava/util/List;

    move-result-object v6

    .line 42
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/index/v2/RepoV2;->getReleaseChannels()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lorg/fdroid/database/RepositoryKt;->toRepoReleaseChannel(Ljava/util/Map;J)Ljava/util/List;

    move-result-object v4

    .line 43
    new-instance v5, Lorg/fdroid/database/RepositoryPreferences;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x78

    const/16 v19, 0x0

    move-object v7, v5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-direct/range {v7 .. v19}, Lorg/fdroid/database/RepositoryPreferences;-><init>(JIZLjava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v6

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    .line 33
    invoke-direct/range {p1 .. p7}, Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V

    return-object v0
.end method
