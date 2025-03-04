.class public final Lorg/fdroid/index/v1/IndexV1Creator;
.super Lorg/fdroid/index/IndexCreator;
.source "IndexV1Creator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fdroid/index/IndexCreator<",
        "Lorg/fdroid/index/v1/IndexV1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJX\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u00132.\u0010\u0014\u001a*\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u0015j\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0016`\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/fdroid/index/v1/IndexV1Creator;",
        "Lorg/fdroid/index/IndexCreator;",
        "Lorg/fdroid/index/v1/IndexV1;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "repoDir",
        "Ljava/io/File;",
        "packageNames",
        "",
        "",
        "repo",
        "Lorg/fdroid/index/v1/RepoV1;",
        "(Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/util/Set;Lorg/fdroid/index/v1/RepoV1;)V",
        "addApp",
        "",
        "packageName",
        "apps",
        "Ljava/util/ArrayList;",
        "Lorg/fdroid/index/v1/AppV1;",
        "Lkotlin/collections/ArrayList;",
        "packages",
        "Ljava/util/HashMap;",
        "",
        "Lorg/fdroid/index/v1/PackageV1;",
        "Lkotlin/collections/HashMap;",
        "createIndex",
        "createRepo",
        "getApp",
        "packageInfo",
        "Landroid/content/pm/PackageInfo;",
        "getPackage",
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
.field private final repo:Lorg/fdroid/index/v1/RepoV1;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/util/Set;Lorg/fdroid/index/v1/RepoV1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/fdroid/index/v1/RepoV1;",
            ")V"
        }
    .end annotation

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repoDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageNames"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/index/IndexCreator;-><init>(Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/util/Set;)V

    iput-object p4, p0, Lorg/fdroid/index/v1/IndexV1Creator;->repo:Lorg/fdroid/index/v1/RepoV1;

    return-void
.end method

.method private final addApp(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/index/v1/AppV1;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/fdroid/index/v1/PackageV1;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "IndexV1Creator"

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/fdroid/index/IndexCreator;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1040

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/fdroid/index/v1/IndexV1Creator;->getApp(Landroid/content/pm/PackageInfo;)Lorg/fdroid/index/v1/AppV1;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0, v1}, Lorg/fdroid/index/v1/IndexV1Creator;->getPackage(Landroid/content/pm/PackageInfo;)Lorg/fdroid/index/v1/PackageV1;

    move-result-object p2

    if-nez p2, :cond_0

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got no package for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "app disappeared during addApp: "

    .line 78
    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private final createIndex()Lorg/fdroid/index/v1/IndexV1;
    .locals 8

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/fdroid/index/IndexCreator;->getPackageNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/fdroid/index/IndexCreator;->getPackageNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    invoke-virtual {p0}, Lorg/fdroid/index/IndexCreator;->getPackageNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-direct {p0, v1, v3, v4}, Lorg/fdroid/index/v1/IndexV1Creator;->addApp(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v7, Lorg/fdroid/index/v1/IndexV1;

    iget-object v1, p0, Lorg/fdroid/index/v1/IndexV1Creator;->repo:Lorg/fdroid/index/v1/RepoV1;

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/v1/IndexV1;-><init>(Lorg/fdroid/index/v1/RepoV1;Lorg/fdroid/index/v1/Requests;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getApp(Landroid/content/pm/PackageInfo;)Lorg/fdroid/index/v1/AppV1;
    .locals 35

    move-object/from16 v0, p1

    .line 83
    invoke-virtual/range {p0 .. p1}, Lorg/fdroid/index/IndexCreator;->copyIconToRepo(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v27

    .line 85
    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 86
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/IndexCreator;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 84
    new-instance v34, Lorg/fdroid/index/v1/AppV1;

    move-object/from16 v0, v34

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v28, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "Unknown"

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 85
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x737ffdff

    const/16 v33, 0x0

    .line 84
    invoke-direct/range {v0 .. v33}, Lorg/fdroid/index/v1/AppV1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v34
.end method

.method private final getPackage(Landroid/content/pm/PackageInfo;)Lorg/fdroid/index/v1/PackageV1;
    .locals 29

    move-object/from16 v0, p1

    .line 93
    invoke-virtual/range {p0 .. p1}, Lorg/fdroid/index/IndexCreator;->copyApkToRepo(Landroid/content/pm/PackageInfo;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 94
    :cond_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    return-object v2

    .line 95
    :cond_1
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    move-object/from16 v5, p0

    .line 96
    invoke-virtual {v5, v1}, Lorg/fdroid/index/IndexCreator;->hashFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 98
    sget-object v1, Lorg/fdroid/index/IndexUtils;->INSTANCE:Lorg/fdroid/index/IndexUtils;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    const-string v10, "toByteArray(...)"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/fdroid/index/IndexUtils;->getsig([B)Ljava/lang/String;

    move-result-object v15

    .line 99
    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/fdroid/index/IndexUtils;->getPackageSigner([B)Ljava/lang/String;

    move-result-object v16

    .line 101
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 102
    invoke-static/range {p1 .. p1}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v17

    .line 103
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static/range {p1 .. p1}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v10

    .line 105
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object/from16 v23, v1

    .line 111
    new-instance v1, Ljava/io/File;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v20

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_4

    .line 112
    invoke-static {v3}, Lorg/fdroid/index/v1/IndexV1Creator$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v11, v1

    goto :goto_0

    :cond_4
    move-object v11, v2

    .line 113
    :goto_0
    iget v1, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 114
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 11065
    new-instance v4, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 11400
    array-length v7, v3

    move v10, v6

    :goto_1
    if-ge v10, v7, :cond_5

    aget-object v12, v3, v10

    .line 115
    new-instance v13, Lorg/fdroid/index/v1/PermissionV1;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-direct {v13, v12, v2, v6, v2}, Lorg/fdroid/index/v1/PermissionV1;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11401
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    move-object v2, v4

    goto :goto_2

    .line 116
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 117
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 118
    invoke-virtual/range {p0 .. p1}, Lorg/fdroid/index/IndexCreator;->parseNativeCode(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v24

    .line 119
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz v0, :cond_8

    .line 11065
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 11400
    array-length v6, v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_7

    aget-object v10, v0, v7

    .line 119
    iget-object v10, v10, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 11401
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v25, v4

    goto :goto_4

    .line 119
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v25, v0

    .line 100
    :goto_4
    new-instance v0, Lorg/fdroid/index/v1/PackageV1;

    move-object v6, v0

    const/4 v7, 0x0

    .line 106
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v10, "sha256"

    const/4 v12, 0x0

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 101
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v19, 0x0

    .line 102
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v26, 0x0

    const v27, 0x40821

    const/16 v28, 0x0

    move-wide/from16 v17, v20

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 100
    invoke-direct/range {v6 .. v28}, Lorg/fdroid/index/v1/PackageV1;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createRepo()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/fdroid/index/v1/IndexV1Creator;->createRepo()Lorg/fdroid/index/v1/IndexV1;

    move-result-object v0

    return-object v0
.end method

.method public createRepo()Lorg/fdroid/index/v1/IndexV1;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/fdroid/index/IndexCreator;->prepareIconFolders()V

    .line 38
    invoke-direct {p0}, Lorg/fdroid/index/v1/IndexV1Creator;->createIndex()Lorg/fdroid/index/v1/IndexV1;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/fdroid/index/IndexCreator;->getRepoDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "index-v1.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    .line 40
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    :try_start_0
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    const-class v4, Lorg/fdroid/index/v1/IndexV1;

    .line 32
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 80
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v1, v3, v0, v2}, Lkotlinx/serialization/json/JvmStreamsKt;->encodeToStream(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 42
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 40
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
