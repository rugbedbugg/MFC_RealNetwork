.class public final Lorg/fdroid/database/RepositoryKt;
.super Ljava/lang/Object;
.source "Repository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u001a2\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0014\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a&\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0010*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00160\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a&\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0010*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00190\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "validateCertificate",
        "",
        "certificate",
        "",
        "toCoreRepository",
        "Lorg/fdroid/database/CoreRepository;",
        "Lorg/fdroid/index/v2/RepoV2;",
        "repoId",
        "",
        "version",
        "formatVersion",
        "Lorg/fdroid/index/IndexFormatVersion;",
        "toMirror",
        "Lorg/fdroid/database/Mirror;",
        "Lorg/fdroid/index/v2/MirrorV2;",
        "toRepoAntiFeatures",
        "",
        "Lorg/fdroid/database/AntiFeature;",
        "",
        "Lorg/fdroid/index/v2/AntiFeatureV2;",
        "toRepoCategories",
        "Lorg/fdroid/database/Category;",
        "Lorg/fdroid/index/v2/CategoryV2;",
        "toRepoReleaseChannel",
        "Lorg/fdroid/database/ReleaseChannel;",
        "Lorg/fdroid/index/v2/ReleaseChannelV2;",
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
.method public static final synthetic access$validateCertificate(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/fdroid/database/RepositoryKt;->validateCertificate(Ljava/lang/String;)V

    return-void
.end method

.method public static final toCoreRepository(Lorg/fdroid/index/v2/RepoV2;JJLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;)Lorg/fdroid/database/CoreRepository;
    .locals 15

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lorg/fdroid/database/CoreRepository;

    .line 53
    invoke-virtual {p0}, Lorg/fdroid/index/v2/RepoV2;->getName()Ljava/util/Map;

    move-result-object v4

    .line 54
    invoke-virtual {p0}, Lorg/fdroid/index/v2/RepoV2;->getIcon()Ljava/util/Map;

    move-result-object v5

    .line 55
    invoke-virtual {p0}, Lorg/fdroid/index/v2/RepoV2;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {p0}, Lorg/fdroid/index/v2/RepoV2;->getWebBaseUrl()Ljava/lang/String;

    move-result-object v7

    .line 57
    invoke-virtual {p0}, Lorg/fdroid/index/v2/RepoV2;->getTimestamp()J

    move-result-wide v8

    .line 58
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x0

    .line 61
    invoke-virtual {p0}, Lorg/fdroid/index/v2/RepoV2;->getDescription()Ljava/util/Map;

    move-result-object v13

    move-object v1, v0

    move-wide/from16 v2, p1

    move-object/from16 v11, p5

    .line 51
    invoke-direct/range {v1 .. v14}, Lorg/fdroid/database/CoreRepository;-><init>(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic toCoreRepository$default(Lorg/fdroid/index/v2/RepoV2;JJLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;ILjava/lang/Object;)Lorg/fdroid/database/CoreRepository;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-wide v3, p3

    move-object v6, p6

    .line 46
    invoke-static/range {v0 .. v6}, Lorg/fdroid/database/RepositoryKt;->toCoreRepository(Lorg/fdroid/index/v2/RepoV2;JJLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;)Lorg/fdroid/database/CoreRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final toMirror(Lorg/fdroid/index/v2/MirrorV2;J)Lorg/fdroid/database/Mirror;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lorg/fdroid/database/Mirror;

    .line 249
    invoke-virtual {p0}, Lorg/fdroid/index/v2/MirrorV2;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lorg/fdroid/index/v2/MirrorV2;->getLocation()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-direct {v0, p1, p2, v1, p0}, Lorg/fdroid/database/Mirror;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toRepoAntiFeatures(Ljava/util/Map;J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/AntiFeatureV2;",
            ">;J)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/AntiFeature;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 297
    new-instance v9, Lorg/fdroid/database/AntiFeature;

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v2/AntiFeatureV2;

    invoke-virtual {v2}, Lorg/fdroid/index/v2/AntiFeatureV2;->getIcon()Ljava/util/Map;

    move-result-object v6

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v2/AntiFeatureV2;

    invoke-virtual {v2}, Lorg/fdroid/index/v2/AntiFeatureV2;->getName()Ljava/util/Map;

    move-result-object v7

    .line 302
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/AntiFeatureV2;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/AntiFeatureV2;->getDescription()Ljava/util/Map;

    move-result-object v8

    move-object v2, v9

    move-wide v3, p1

    .line 297
    invoke-direct/range {v2 .. v8}, Lorg/fdroid/database/AntiFeature;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 153
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toRepoCategories(Ljava/util/Map;J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/CategoryV2;",
            ">;J)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Category;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 332
    new-instance v9, Lorg/fdroid/database/Category;

    .line 334
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v2/CategoryV2;

    invoke-virtual {v2}, Lorg/fdroid/index/v2/CategoryV2;->getIcon()Ljava/util/Map;

    move-result-object v6

    .line 336
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v2/CategoryV2;

    invoke-virtual {v2}, Lorg/fdroid/index/v2/CategoryV2;->getName()Ljava/util/Map;

    move-result-object v7

    .line 337
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/CategoryV2;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/CategoryV2;->getDescription()Ljava/util/Map;

    move-result-object v8

    move-object v2, v9

    move-wide v3, p1

    .line 332
    invoke-direct/range {v2 .. v8}, Lorg/fdroid/database/Category;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 153
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toRepoReleaseChannel(Ljava/util/Map;J)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/ReleaseChannelV2;",
            ">;J)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/ReleaseChannel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 367
    new-instance v11, Lorg/fdroid/database/ReleaseChannel;

    .line 369
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 370
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v2/ReleaseChannelV2;

    invoke-virtual {v2}, Lorg/fdroid/index/v2/ReleaseChannelV2;->getName()Ljava/util/Map;

    move-result-object v7

    .line 371
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v2/ReleaseChannelV2;

    invoke-virtual {v1}, Lorg/fdroid/index/v2/ReleaseChannelV2;->getDescription()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v2, v11

    move-wide v3, p1

    .line 367
    invoke-direct/range {v2 .. v10}, Lorg/fdroid/database/ReleaseChannel;-><init>(JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final validateCertificate(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 414
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 415
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method
