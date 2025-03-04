.class public final Lorg/fdroid/index/IndexConverter;
.super Ljava/lang/Object;
.source "IndexConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/fdroid/index/IndexConverter;",
        "",
        "defaultLocale",
        "",
        "(Ljava/lang/String;)V",
        "toIndexV2",
        "Lorg/fdroid/index/v2/IndexV2;",
        "v1",
        "Lorg/fdroid/index/v1/IndexV1;",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final defaultLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/fdroid/index/IndexConverter;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "defaultLocale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/IndexConverter;->defaultLocale:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "en-US"

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lorg/fdroid/index/IndexConverter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toIndexV2(Lorg/fdroid/index/v1/IndexV1;)Lorg/fdroid/index/v2/IndexV2;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "v1"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 22
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/index/v1/IndexV1;->getApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/index/v1/IndexV1;->getApps()Ljava/util/List;

    move-result-object v5

    .line 1855
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/fdroid/index/v1/AppV1;

    .line 24
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/index/v1/IndexV1;->getPackages()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_0

    const/4 v9, 0x0

    .line 25
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/fdroid/index/v1/PackageV1;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/fdroid/index/v1/PackageV1;->getSigner()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 27
    :goto_1
    invoke-virtual {v6}, Lorg/fdroid/index/v1/AppV1;->getAntiFeatures()Ljava/util/List;

    move-result-object v10

    .line 1271
    new-instance v11, Ljava/util/LinkedHashMap;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-static {v13}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1285
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1286
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    .line 27
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v15

    .line 1286
    invoke-interface {v11, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 28
    :cond_1
    invoke-virtual {v6}, Lorg/fdroid/index/v1/AppV1;->getLocalized()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_2

    sget-object v13, Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;->INSTANCE:Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;

    invoke-static {v10, v13}, Lorg/fdroid/index/IndexConverterKt;->mapValuesNotNull(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v10

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    iget-object v13, v0, Lorg/fdroid/index/IndexConverter;->defaultLocale:Ljava/lang/String;

    .line 30
    invoke-virtual {v6, v9, v13}, Lorg/fdroid/index/v1/AppV1;->toMetadataV2(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/index/v2/MetadataV2;

    move-result-object v9

    if-eqz v7, :cond_7

    .line 1179
    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v12}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v12

    invoke-static {v12, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    .line 1180
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1254
    check-cast v12, Lorg/fdroid/index/v1/PackageV1;

    .line 32
    invoke-virtual {v12}, Lorg/fdroid/index/v1/PackageV1;->getVersionCode()Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    goto :goto_5

    :cond_3
    move-wide/from16 v17, v15

    .line 33
    :goto_5
    invoke-virtual {v6}, Lorg/fdroid/index/v1/AppV1;->getSuggestedVersionCode()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-static {v14}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    :cond_4
    cmp-long v14, v17, v15

    if-lez v14, :cond_5

    const-string v14, "Beta"

    .line 35
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_6

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    :goto_6
    cmp-long v15, v15, v17

    if-nez v15, :cond_6

    move-object v15, v10

    goto :goto_7

    :cond_6
    const/4 v15, 0x0

    .line 37
    :goto_7
    invoke-virtual {v12}, Lorg/fdroid/index/v1/PackageV1;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v14, v11, v15}, Lorg/fdroid/index/v1/PackageV1;->toPackageVersionV2(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Lorg/fdroid/index/v2/PackageVersionV2;

    move-result-object v12

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 1254
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v13, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 38
    :cond_7
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v13

    .line 29
    :cond_8
    new-instance v7, Lorg/fdroid/index/v2/PackageV2;

    invoke-direct {v7, v9, v13}, Lorg/fdroid/index/v2/PackageV2;-><init>(Lorg/fdroid/index/v2/MetadataV2;Ljava/util/Map;)V

    .line 40
    invoke-static {v11, v1}, Lorg/fdroid/index/IndexConverterKt;->mapInto(Ljava/util/Map;Ljava/util/HashMap;)V

    .line 41
    invoke-virtual {v6}, Lorg/fdroid/index/v1/AppV1;->getCategories()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v3}, Lorg/fdroid/index/IndexConverterKt;->mapInto(Ljava/util/List;Ljava/util/HashMap;)V

    .line 42
    invoke-virtual {v6}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 44
    :cond_9
    new-instance v5, Lorg/fdroid/index/v2/IndexV2;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/index/v1/IndexV1;->getRepo()Lorg/fdroid/index/v1/RepoV1;

    move-result-object v2

    iget-object v6, v0, Lorg/fdroid/index/IndexConverter;->defaultLocale:Ljava/lang/String;

    .line 49
    invoke-static {}, Lorg/fdroid/index/IndexConverterKt;->getV1ReleaseChannels()Ljava/util/Map;

    move-result-object v7

    .line 45
    invoke-virtual {v2, v6, v1, v3, v7}, Lorg/fdroid/index/v1/RepoV1;->toRepoV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/fdroid/index/v2/RepoV2;

    move-result-object v1

    .line 44
    invoke-direct {v5, v1, v4}, Lorg/fdroid/index/v2/IndexV2;-><init>(Lorg/fdroid/index/v2/RepoV2;Ljava/util/Map;)V

    return-object v5
.end method
