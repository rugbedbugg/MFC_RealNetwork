.class public final Lorg/fdroid/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JU\u0010\u0005\u001a\u0004\u0018\u0001H\u0006\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0012\u0008\u0002\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0010Jy\u0010\u0011\u001a\u0004\u0018\u0001H\u0006\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\u0018\u0008\u0002\u0010\u0012\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0013\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0012\u0008\u0002\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0019J]\u0010\u0011\u001a\u0004\u0018\u0001H\u0006\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0012\u0008\u0002\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001cJ0\u0010\u001d\u001a\u00020\u00182\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001e2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0008\u0010 \u001a\u0004\u0018\u00010\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!\u00b2\u0006\u001c\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0013\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0007X\u008a\u0084\u0002"
    }
    d2 = {
        "Lorg/fdroid/UpdateChecker;",
        "",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityChecker;",
        "(Lorg/fdroid/CompatibilityChecker;)V",
        "getSuggestedVersion",
        "T",
        "Lorg/fdroid/index/v2/PackageVersion;",
        "versions",
        "",
        "preferredSigner",
        "",
        "releaseChannels",
        "preferencesGetter",
        "Lkotlin/Function0;",
        "Lorg/fdroid/PackagePreference;",
        "(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;",
        "getUpdate",
        "allowedSignersGetter",
        "",
        "installedVersionCode",
        "",
        "allowedReleaseChannels",
        "includeKnownVulnerabilities",
        "",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function0;JLjava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;",
        "packageInfo",
        "Landroid/content/pm/PackageInfo;",
        "(Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;",
        "hasAllowedReleaseChannel",
        "",
        "versionReleaseChannels",
        "packagePreference",
        "index_release",
        "allowedSigners"
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
.field private final compatibilityChecker:Lorg/fdroid/CompatibilityChecker;


# direct methods
.method public constructor <init>(Lorg/fdroid/CompatibilityChecker;)V
    .locals 1

    const-string v0, "compatibilityChecker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/UpdateChecker;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    return-void
.end method

.method public static synthetic getSuggestedVersion$default(Lorg/fdroid/UpdateChecker;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/fdroid/index/v2/PackageVersion;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 61
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/UpdateChecker;->getSuggestedVersion(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getUpdate$default(Lorg/fdroid/UpdateChecker;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/util/List;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/fdroid/index/v2/PackageVersion;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 31
    invoke-virtual/range {v1 .. v6}, Lorg/fdroid/UpdateChecker;->getUpdate(Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getUpdate$default(Lorg/fdroid/UpdateChecker;Ljava/util/List;Lkotlin/jvm/functions/Function0;JLjava/util/List;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/fdroid/index/v2/PackageVersion;
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object v4, p5

    :goto_2
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v5, p6

    :goto_3
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p7

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-wide p5, v2

    move-object p7, v4

    move p8, v5

    move-object/from16 p9, v1

    .line 89
    invoke-virtual/range {p2 .. p9}, Lorg/fdroid/UpdateChecker;->getUpdate(Ljava/util/List;Lkotlin/jvm/functions/Function0;JLjava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;

    move-result-object v0

    return-object v0
.end method

.method private static final getUpdate$lambda$1(Lkotlin/Lazy;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private final hasAllowedReleaseChannel(Ljava/util/Set;Ljava/util/List;Lorg/fdroid/PackagePreference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/fdroid/PackagePreference;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 139
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 142
    invoke-interface {p3}, Lorg/fdroid/PackagePreference;->getReleaseChannels()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    .line 143
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    return v1

    .line 149
    :cond_4
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    :goto_2
    return v0
.end method


# virtual methods
.method public final getSuggestedVersion(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/fdroid/index/v2/PackageVersion;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            ")TT;"
        }
    .end annotation

    const-string v0, "versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 68
    new-instance v0, Lorg/fdroid/UpdateChecker$getSuggestedVersion$1$1;

    invoke-direct {v0, p2}, Lorg/fdroid/UpdateChecker$getSuggestedVersion$1$1;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v8, p4

    .line 66
    invoke-static/range {v1 .. v10}, Lorg/fdroid/UpdateChecker;->getUpdate$default(Lorg/fdroid/UpdateChecker;Ljava/util/List;Lkotlin/jvm/functions/Function0;JLjava/util/List;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/fdroid/index/v2/PackageVersion;

    move-result-object p1

    return-object p1
.end method

.method public final getUpdate(Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/fdroid/index/v2/PackageVersion;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0;",
            ")TT;"
        }
    .end annotation

    const-string v0, "versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p2}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    .line 37
    new-instance v3, Lorg/fdroid/UpdateChecker$getUpdate$1;

    invoke-direct {v3, p2}, Lorg/fdroid/UpdateChecker$getUpdate$1;-><init>(Landroid/content/pm/PackageInfo;)V

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lorg/fdroid/UpdateChecker;->getUpdate(Ljava/util/List;Lkotlin/jvm/functions/Function0;JLjava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;

    move-result-object p1

    return-object p1
.end method

.method public final getUpdate(Ljava/util/List;Lkotlin/jvm/functions/Function0;JLjava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/fdroid/index/v2/PackageVersion;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0;",
            ")TT;"
        }
    .end annotation

    const-string v0, "versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lorg/fdroid/UpdateChecker$getUpdate$allowedSigners$2;

    invoke-direct {v0, p2}, Lorg/fdroid/UpdateChecker$getUpdate$allowedSigners$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/index/v2/PackageVersion;

    if-eqz p6, :cond_1

    .line 102
    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getHasKnownVulnerability()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 105
    :cond_1
    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gtz v2, :cond_2

    return-object v1

    .line 107
    :cond_2
    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/fdroid/index/v2/SignerV2;->getHasMultipleSigners()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/fdroid/UpdateChecker;->compatibilityChecker:Lorg/fdroid/CompatibilityChecker;

    .line 109
    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getPackageManifest()Lorg/fdroid/index/v2/PackageManifest;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/fdroid/CompatibilityChecker;->isCompatible(Lorg/fdroid/index/v2/PackageManifest;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p7, :cond_4

    .line 111
    invoke-interface {p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/PackagePreference;

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 112
    invoke-interface {v2}, Lorg/fdroid/PackagePreference;->getIgnoreVersionCodeUpdate()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    .line 113
    :goto_2
    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getVersionCode()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    if-eqz p5, :cond_6

    .line 116
    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 117
    :cond_7
    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getReleaseChannels()Ljava/util/List;

    move-result-object v4

    .line 115
    invoke-direct {p0, v3, v4, v2}, Lorg/fdroid/UpdateChecker;->hasAllowedReleaseChannel(Ljava/util/Set;Ljava/util/List;Lorg/fdroid/PackagePreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v0}, Lorg/fdroid/index/v2/PackageVersion;->getSigner()Lorg/fdroid/index/v2/SignerV2;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/fdroid/index/v2/SignerV2;->getSha256()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    .line 124
    invoke-static {p2}, Lorg/fdroid/UpdateChecker;->getUpdate$lambda$1(Lkotlin/Lazy;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 125
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {p2}, Lorg/fdroid/UpdateChecker;->getUpdate$lambda$1(Lkotlin/Lazy;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    return-object v0

    :cond_a
    return-object v1
.end method
