.class public final Lorg/fdroid/database/VersionDaoInt$DefaultImpls;
.super Ljava/lang/Object;
.source "VersionDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/database/VersionDaoInt;
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
.method private static diffVersion(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lkotlinx/serialization/json/JsonObject;Lkotlin/jvm/functions/Function1;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/VersionDaoInt;",
            "Lorg/fdroid/database/Version;",
            "Lkotlinx/serialization/json/JsonObject;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 124
    invoke-static {}, Lorg/fdroid/database/VersionDaoKt;->access$getDENY_LIST$p()Ljava/util/List;

    move-result-object v3

    .line 1855
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v4}, Lkotlinx/serialization/json/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lkotlinx/serialization/SerializationException;

    invoke-direct {v0, v4}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    sget-object v3, Lorg/fdroid/index/v2/ReflectionDiffer;->INSTANCE:Lorg/fdroid/index/v2/ReflectionDiffer;

    invoke-virtual {v3, v1, v2}, Lorg/fdroid/index/v2/ReflectionDiffer;->applyDiff(Ljava/lang/Object;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/fdroid/database/Version;

    .line 131
    invoke-virtual {v4}, Lorg/fdroid/database/Version;->getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;

    move-result-object v3

    move-object/from16 v5, p3

    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x3ff

    const/16 v19, 0x0

    .line 132
    invoke-static/range {v4 .. v19}, Lorg/fdroid/database/Version;->copy$default(Lorg/fdroid/database/Version;JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;ZILjava/lang/Object;)Lorg/fdroid/database/Version;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/fdroid/database/VersionDaoInt;->update(Lorg/fdroid/database/Version;)V

    const-string v3, "manifest"

    .line 134
    invoke-virtual {v2, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    .line 135
    instance-of v3, v2, Lkotlinx/serialization/json/JsonNull;

    if-eqz v3, :cond_2

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lorg/fdroid/database/VersionDaoInt;->deleteVersionedStrings(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_2
    instance-of v3, v2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v3, :cond_3

    .line 138
    check-cast v2, Lkotlinx/serialization/json/JsonObject;

    const-string v3, "usesPermission"

    sget-object v4, Lorg/fdroid/database/VersionedStringType;->PERMISSION:Lorg/fdroid/database/VersionedStringType;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->diffVersionedStrings(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V

    const-string v3, "usesPermissionSdk23"

    .line 140
    sget-object v4, Lorg/fdroid/database/VersionedStringType;->PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;

    .line 139
    invoke-static {v0, v1, v2, v3, v4}, Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->diffVersionedStrings(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static diffVersionedStrings(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V
    .locals 6

    .line 149
    sget-object v0, Lorg/fdroid/database/DbDiffUtils;->INSTANCE:Lorg/fdroid/database/DbDiffUtils;

    new-instance v3, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;

    invoke-direct {v3, p1, p4}, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;-><init>(Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)V

    new-instance v4, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;

    invoke-direct {v4, p0, p1, p4}, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;-><init>(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)V

    new-instance v5, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$3;

    invoke-direct {v5, p0}, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$3;-><init>(Lorg/fdroid/database/VersionDaoInt;)V

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateListTable(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static getVersions(Lorg/fdroid/database/VersionDaoInt;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/VersionDaoInt;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Version;",
            ">;"
        }
    .end annotation

    const-string v0, "packageNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_0

    invoke-interface {p0, p1}, Lorg/fdroid/database/VersionDaoInt;->getVersionsInternal(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 200
    :cond_0
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1447
    check-cast v1, Ljava/util/List;

    .line 200
    invoke-interface {p0, v1}, Lorg/fdroid/database/VersionDaoInt;->getVersionsInternal(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1448
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static insert(Lorg/fdroid/database/VersionDaoInt;JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/index/v2/PackageVersionV2;Z)V
    .locals 6

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p5

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 79
    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/VersionKt;->toVersion(Lorg/fdroid/index/v2/PackageVersionV2;JLjava/lang/String;Ljava/lang/String;Z)Lorg/fdroid/database/Version;

    move-result-object p1

    .line 80
    invoke-interface {p0, p1}, Lorg/fdroid/database/VersionDaoInt;->insert(Lorg/fdroid/database/Version;)V

    .line 81
    invoke-virtual {p5}, Lorg/fdroid/index/v2/PackageVersionV2;->getManifest()Lorg/fdroid/index/v2/ManifestV2;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/fdroid/database/VersionKt;->getVersionedStrings(Lorg/fdroid/index/v2/ManifestV2;Lorg/fdroid/database/Version;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/fdroid/database/VersionDaoInt;->insert(Ljava/util/List;)V

    return-void
.end method

.method public static insert(Lorg/fdroid/database/VersionDaoInt;JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/VersionDaoInt;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/PackageVersionV2;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageVersions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkIfCompatible"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 32
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/fdroid/index/v2/PackageVersionV2;

    .line 66
    invoke-interface {p5, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    .line 67
    invoke-interface/range {v2 .. v8}, Lorg/fdroid/database/VersionDaoInt;->insert(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/index/v2/PackageVersionV2;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static update(Lorg/fdroid/database/VersionDaoInt;JLjava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/database/VersionDaoInt;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonObject;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkIfCompatible"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 100
    invoke-interface {p0, p1, p2, p3}, Lorg/fdroid/database/VersionDaoInt;->deleteAppVersion(JLjava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    if-nez v0, :cond_1

    .line 103
    invoke-interface {p0, p1, p2, p3, v6}, Lorg/fdroid/database/VersionDaoInt;->deleteAppVersion(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {p0, p1, p2, p3, v6}, Lorg/fdroid/database/VersionDaoInt;->getVersion(JLjava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Version;

    move-result-object v1

    if-nez v1, :cond_2

    .line 108
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const-class v3, Lorg/fdroid/index/v2/PackageVersionV2;

    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 80
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    move-object v7, v0

    check-cast v7, Lorg/fdroid/index/v2/PackageVersionV2;

    .line 109
    invoke-virtual {v7}, Lorg/fdroid/index/v2/PackageVersionV2;->getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;

    move-result-object v0

    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    .line 110
    invoke-interface/range {v2 .. v8}, Lorg/fdroid/database/VersionDaoInt;->insert(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/index/v2/PackageVersionV2;Z)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {p0, v1, v0, p5}, Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->diffVersion(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lkotlinx/serialization/json/JsonObject;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
