.class public final Lorg/fdroid/database/VersionKt;
.super Ljava/lang/Object;
.source "Version.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a \u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a7\u0010\t\u001a\u0004\u0018\u0001H\n\"\u0004\u0008\u0000\u0010\n*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000fH\u0002\u00a2\u0006\u0002\u0010\u0010\u001a\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u0008H\u0000\u001a,\u0010\u0013\u001a\u00020\u0005*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0000\u001a(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0001*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\rH\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "getPermissions",
        "",
        "Lorg/fdroid/index/v2/PermissionV2;",
        "Lorg/fdroid/database/VersionedString;",
        "version",
        "Lorg/fdroid/database/Version;",
        "getPermissionsSdk23",
        "getVersionedStrings",
        "Lorg/fdroid/index/v2/ManifestV2;",
        "map",
        "T",
        "v",
        "wantedType",
        "Lorg/fdroid/database/VersionedStringType;",
        "factory",
        "Lkotlin/Function0;",
        "(Lorg/fdroid/database/VersionedString;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "toManifest",
        "Lorg/fdroid/database/AppManifest;",
        "toVersion",
        "Lorg/fdroid/index/v2/PackageVersionV2;",
        "repoId",
        "",
        "packageName",
        "",
        "versionId",
        "isCompatible",
        "",
        "toVersionedString",
        "type",
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
.method public static final getPermissions(Ljava/util/List;Lorg/fdroid/database/Version;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;",
            "Lorg/fdroid/database/Version;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1611
    check-cast v1, Lorg/fdroid/database/VersionedString;

    .line 211
    sget-object v2, Lorg/fdroid/database/VersionedStringType;->PERMISSION:Lorg/fdroid/database/VersionedStringType;

    new-instance v3, Lorg/fdroid/database/VersionKt$getPermissions$1$1;

    invoke-direct {v3, v1}, Lorg/fdroid/database/VersionKt$getPermissions$1$1;-><init>(Lorg/fdroid/database/VersionedString;)V

    invoke-static {v1, p1, v2, v3}, Lorg/fdroid/database/VersionKt;->map(Lorg/fdroid/database/VersionedString;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/PermissionV2;

    if-eqz v1, :cond_0

    .line 1611
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final getPermissionsSdk23(Ljava/util/List;Lorg/fdroid/database/Version;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;",
            "Lorg/fdroid/database/Version;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1611
    check-cast v1, Lorg/fdroid/database/VersionedString;

    .line 220
    sget-object v2, Lorg/fdroid/database/VersionedStringType;->PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;

    new-instance v3, Lorg/fdroid/database/VersionKt$getPermissionsSdk23$1$1;

    invoke-direct {v3, v1}, Lorg/fdroid/database/VersionKt$getPermissionsSdk23$1$1;-><init>(Lorg/fdroid/database/VersionedString;)V

    invoke-static {v1, p1, v2, v3}, Lorg/fdroid/database/VersionKt;->map(Lorg/fdroid/database/VersionedString;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/PermissionV2;

    if-eqz v1, :cond_0

    .line 1611
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final getVersionedStrings(Lorg/fdroid/index/v2/ManifestV2;Lorg/fdroid/database/Version;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/index/v2/ManifestV2;",
            "Lorg/fdroid/database/Version;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getUsesPermission()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/fdroid/database/VersionedStringType;->PERMISSION:Lorg/fdroid/database/VersionedStringType;

    invoke-static {v0, p1, v1}, Lorg/fdroid/database/VersionKt;->toVersionedString(Ljava/util/List;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getUsesPermissionSdk23()Ljava/util/List;

    move-result-object p0

    sget-object v1, Lorg/fdroid/database/VersionedStringType;->PERMISSION_SDK_23:Lorg/fdroid/database/VersionedStringType;

    invoke-static {p0, p1, v1}, Lorg/fdroid/database/VersionKt;->toVersionedString(Ljava/util/List;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)Ljava/util/List;

    move-result-object p0

    .line 206
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final map(Lorg/fdroid/database/VersionedString;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/fdroid/database/VersionedString;",
            "Lorg/fdroid/database/Version;",
            "Lorg/fdroid/database/VersionedStringType;",
            "Lkotlin/jvm/functions/Function0;",
            ")TT;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lorg/fdroid/database/VersionedString;->getRepoId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/fdroid/database/VersionedString;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/fdroid/database/VersionedString;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p0}, Lorg/fdroid/database/VersionedString;->getType()Lorg/fdroid/database/VersionedStringType;

    move-result-object p0

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final toManifest(Lorg/fdroid/index/v2/ManifestV2;)Lorg/fdroid/database/AppManifest;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getVersionCode()J

    move-result-wide v3

    .line 143
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getUsesSdk()Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object v5

    .line 144
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v6

    .line 145
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v7

    .line 146
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getNativecode()Ljava/util/List;

    move-result-object v8

    .line 147
    invoke-virtual {p0}, Lorg/fdroid/index/v2/ManifestV2;->getFeatures()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v9, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Lorg/fdroid/index/v2/FeatureV2;

    .line 147
    invoke-virtual {v0}, Lorg/fdroid/index/v2/FeatureV2;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1621
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    new-instance p0, Lorg/fdroid/database/AppManifest;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/fdroid/database/AppManifest;-><init>(Ljava/lang/String;JLorg/fdroid/index/v2/UsesSdkV2;Ljava/lang/Integer;Lorg/fdroid/index/v2/SignerV2;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static final toVersion(Lorg/fdroid/index/v2/PackageVersionV2;JLjava/lang/String;Ljava/lang/String;Z)Lorg/fdroid/database/Version;
    .locals 15

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lorg/fdroid/database/Version;

    .line 77
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getAdded()J

    move-result-wide v6

    .line 78
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getFile()Lorg/fdroid/index/v2/FileV1;

    move-result-object v8

    .line 79
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getSrc()Lorg/fdroid/index/v2/FileV2;

    move-result-object v9

    .line 80
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getManifest()Lorg/fdroid/index/v2/ManifestV2;

    move-result-object v2

    invoke-static {v2}, Lorg/fdroid/database/VersionKt;->toManifest(Lorg/fdroid/index/v2/ManifestV2;)Lorg/fdroid/database/AppManifest;

    move-result-object v10

    .line 81
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getReleaseChannels()Ljava/util/List;

    move-result-object v11

    .line 82
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getAntiFeatures()Ljava/util/Map;

    move-result-object v12

    .line 83
    invoke-virtual {p0}, Lorg/fdroid/index/v2/PackageVersionV2;->getWhatsNew()Ljava/util/Map;

    move-result-object v13

    move-object v1, v0

    move-wide/from16 v2, p1

    move/from16 v14, p5

    .line 73
    invoke-direct/range {v1 .. v14}, Lorg/fdroid/database/Version;-><init>(JLjava/lang/String;Ljava/lang/String;JLorg/fdroid/index/v2/FileV1;Lorg/fdroid/index/v2/FileV2;Lorg/fdroid/database/AppManifest;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    return-object v0
.end method

.method public static final toVersionedString(Ljava/util/List;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v2/PermissionV2;",
            ">;",
            "Lorg/fdroid/database/Version;",
            "Lorg/fdroid/database/VersionedStringType;",
            ")",
            "Ljava/util/List<",
            "Lorg/fdroid/database/VersionedString;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lorg/fdroid/index/v2/PermissionV2;

    .line 195
    new-instance v10, Lorg/fdroid/database/VersionedString;

    .line 196
    invoke-virtual {p1}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v3

    .line 197
    invoke-virtual {p1}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {p1}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-virtual {v1}, Lorg/fdroid/index/v2/PermissionV2;->getName()Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-virtual {v1}, Lorg/fdroid/index/v2/PermissionV2;->getMaxSdkVersion()Ljava/lang/Integer;

    move-result-object v9

    move-object v2, v10

    move-object v7, p2

    .line 195
    invoke-direct/range {v2 .. v9}, Lorg/fdroid/database/VersionedString;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
