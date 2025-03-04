.class public final Lorg/fdroid/database/DbUpdateChecker;
.super Ljava/lang/Object;
.source "DbUpdateChecker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J:\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019H\u0007J\"\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0019H\u0002J4\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00172\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\"\u001a\u00020\u0019H\u0007JN\u0010#\u001a\u0004\u0018\u00010\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00172\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00172\u0008\u0008\u0002\u0010\"\u001a\u00020\u0019H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lorg/fdroid/database/DbUpdateChecker;",
        "",
        "db",
        "Lorg/fdroid/database/FDroidDatabase;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "compatibilityChecker",
        "Lorg/fdroid/CompatibilityChecker;",
        "(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;Lorg/fdroid/CompatibilityChecker;)V",
        "appDao",
        "Lorg/fdroid/database/AppDaoInt;",
        "appPrefsDao",
        "Lorg/fdroid/database/AppPrefsDaoInt;",
        "updateChecker",
        "Lorg/fdroid/UpdateChecker;",
        "versionDao",
        "Lorg/fdroid/database/VersionDaoInt;",
        "getSuggestedVersion",
        "Lorg/fdroid/database/AppVersion;",
        "packageName",
        "",
        "preferredSigner",
        "releaseChannels",
        "",
        "onlyFromPreferredRepo",
        "",
        "getUpdatableApp",
        "Lorg/fdroid/database/UpdatableApp;",
        "version",
        "Lorg/fdroid/database/Version;",
        "installedVersionCode",
        "",
        "isFromPreferredRepo",
        "getUpdatableApps",
        "includeKnownVulnerabilities",
        "getVersion",
        "versions",
        "packageInfo",
        "Landroid/content/pm/PackageInfo;",
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


# instance fields
.field private final appDao:Lorg/fdroid/database/AppDaoInt;

.field private final appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final updateChecker:Lorg/fdroid/UpdateChecker;

.field private final versionDao:Lorg/fdroid/database/VersionDaoInt;


# direct methods
.method public constructor <init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;)V
    .locals 7

    .line 0
    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/database/DbUpdateChecker;-><init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;Lorg/fdroid/CompatibilityChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;Lorg/fdroid/CompatibilityChecker;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatibilityChecker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/fdroid/database/DbUpdateChecker;->packageManager:Landroid/content/pm/PackageManager;

    .line 19
    invoke-interface {p1}, Lorg/fdroid/database/FDroidDatabase;->getAppDao()Lorg/fdroid/database/AppDao;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type org.fdroid.database.AppDaoInt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/fdroid/database/AppDaoInt;

    iput-object p2, p0, Lorg/fdroid/database/DbUpdateChecker;->appDao:Lorg/fdroid/database/AppDaoInt;

    .line 20
    invoke-interface {p1}, Lorg/fdroid/database/FDroidDatabase;->getVersionDao()Lorg/fdroid/database/VersionDao;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type org.fdroid.database.VersionDaoInt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/fdroid/database/VersionDaoInt;

    iput-object p2, p0, Lorg/fdroid/database/DbUpdateChecker;->versionDao:Lorg/fdroid/database/VersionDaoInt;

    .line 21
    invoke-interface {p1}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.fdroid.database.AppPrefsDaoInt"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fdroid/database/AppPrefsDaoInt;

    iput-object p1, p0, Lorg/fdroid/database/DbUpdateChecker;->appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

    .line 22
    new-instance p1, Lorg/fdroid/UpdateChecker;

    invoke-direct {p1, p3}, Lorg/fdroid/UpdateChecker;-><init>(Lorg/fdroid/CompatibilityChecker;)V

    iput-object p1, p0, Lorg/fdroid/database/DbUpdateChecker;->updateChecker:Lorg/fdroid/UpdateChecker;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;Lorg/fdroid/CompatibilityChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 16
    new-instance p3, Lorg/fdroid/CompatibilityCheckerImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/fdroid/CompatibilityCheckerImpl;-><init>(Landroid/content/pm/PackageManager;ZI[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/database/DbUpdateChecker;-><init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;Lorg/fdroid/CompatibilityChecker;)V

    return-void
.end method

.method public static final synthetic access$getAppPrefsDao$p(Lorg/fdroid/database/DbUpdateChecker;)Lorg/fdroid/database/AppPrefsDaoInt;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/fdroid/database/DbUpdateChecker;->appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

    return-object p0
.end method

.method public static synthetic getSuggestedVersion$default(Lorg/fdroid/database/DbUpdateChecker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lorg/fdroid/database/AppVersion;
    .locals 1

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

    const/4 p4, 0x0

    .line 90
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/database/DbUpdateChecker;->getSuggestedVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lorg/fdroid/database/AppVersion;

    move-result-object p0

    return-object p0
.end method

.method private final getUpdatableApp(Lorg/fdroid/database/Version;JZ)Lorg/fdroid/database/UpdatableApp;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/fdroid/database/DbUpdateChecker;->versionDao:Lorg/fdroid/database/VersionDaoInt;

    .line 164
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v2

    .line 165
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/fdroid/database/VersionDaoInt;->getVersionedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/fdroid/database/DbUpdateChecker;->appDao:Lorg/fdroid/database/AppDaoInt;

    .line 169
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/fdroid/database/AppDaoInt;->getAppOverviewItem(JLjava/lang/String;)Lorg/fdroid/database/AppOverviewItem;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 170
    :cond_0
    new-instance v14, Lorg/fdroid/database/UpdatableApp;

    .line 171
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v3

    .line 172
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    .line 174
    invoke-virtual {v6, v1}, Lorg/fdroid/database/Version;->toAppVersion$database_release(Ljava/util/List;)Lorg/fdroid/database/AppVersion;

    move-result-object v8

    .line 176
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/database/Version;->getHasKnownVulnerability()Z

    move-result v10

    .line 177
    invoke-virtual {v2}, Lorg/fdroid/database/AppOverviewItem;->getName()Ljava/lang/String;

    move-result-object v11

    .line 178
    invoke-virtual {v2}, Lorg/fdroid/database/AppOverviewItem;->getSummary()Ljava/lang/String;

    move-result-object v12

    .line 179
    invoke-virtual {v2}, Lorg/fdroid/database/AppOverviewItem;->getLocalizedIcon$database_release()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    move-wide/from16 v6, p2

    move/from16 v9, p4

    .line 170
    invoke-direct/range {v2 .. v13}, Lorg/fdroid/database/UpdatableApp;-><init>(JLjava/lang/String;JLorg/fdroid/database/AppVersion;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v14
.end method

.method public static synthetic getUpdatableApps$default(Lorg/fdroid/database/DbUpdateChecker;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 34
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/database/DbUpdateChecker;->getUpdatableApps(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getVersion(Ljava/util/List;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;Z)Lorg/fdroid/database/Version;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Version;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/fdroid/database/Version;"
        }
    .end annotation

    .line 137
    new-instance v5, Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;

    invoke-direct {v5, p0, p2}, Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;-><init>(Lorg/fdroid/database/DbUpdateChecker;Ljava/lang/String;)V

    if-nez p3, :cond_0

    iget-object p2, p0, Lorg/fdroid/database/DbUpdateChecker;->updateChecker:Lorg/fdroid/UpdateChecker;

    .line 141
    invoke-virtual {p2, p1, p4, p5, v5}, Lorg/fdroid/UpdateChecker;->getSuggestedVersion(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;

    move-result-object p1

    check-cast p1, Lorg/fdroid/database/Version;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/database/DbUpdateChecker;->updateChecker:Lorg/fdroid/UpdateChecker;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move v4, p6

    .line 148
    invoke-virtual/range {v0 .. v5}, Lorg/fdroid/UpdateChecker;->getUpdate(Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/util/List;ZLkotlin/jvm/functions/Function0;)Lorg/fdroid/index/v2/PackageVersion;

    move-result-object p1

    check-cast p1, Lorg/fdroid/database/Version;

    :goto_0
    return-object p1
.end method

.method static synthetic getVersion$default(Lorg/fdroid/database/DbUpdateChecker;Ljava/util/List;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lorg/fdroid/database/Version;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 129
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/database/DbUpdateChecker;->getVersion(Ljava/util/List;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;Z)Lorg/fdroid/database/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getSuggestedVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lorg/fdroid/database/AppVersion;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/fdroid/database/AppVersion;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lorg/fdroid/database/DbUpdateChecker;->appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

    .line 97
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fdroid/database/AppPrefsDaoInt;->getPreferredRepos(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No preferred repo for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-eqz p4, :cond_4

    iget-object v3, p0, Lorg/fdroid/database/DbUpdateChecker;->versionDao:Lorg/fdroid/database/VersionDaoInt;

    .line 101
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/fdroid/database/VersionDaoInt;->getVersions(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/fdroid/database/Version;

    .line 102
    invoke-virtual {v6}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_2

    .line 857
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v1, v4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/fdroid/database/DbUpdateChecker;->versionDao:Lorg/fdroid/database/VersionDaoInt;

    .line 105
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fdroid/database/VersionDaoInt;->getVersions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 107
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    return-object v9

    :cond_5
    :try_start_0
    iget-object v0, p0, Lorg/fdroid/database/DbUpdateChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    .line 110
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_3

    :catch_0
    move-object v3, v9

    :goto_3
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 114
    invoke-static/range {v0 .. v8}, Lorg/fdroid/database/DbUpdateChecker;->getVersion$default(Lorg/fdroid/database/DbUpdateChecker;Ljava/util/List;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lorg/fdroid/database/Version;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v9

    :cond_6
    iget-object v1, p0, Lorg/fdroid/database/DbUpdateChecker;->versionDao:Lorg/fdroid/database/VersionDaoInt;

    .line 122
    invoke-virtual {v0}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v2

    .line 123
    invoke-virtual {v0}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v0}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/fdroid/database/VersionDaoInt;->getVersionedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lorg/fdroid/database/Version;->toAppVersion$database_release(Ljava/util/List;)Lorg/fdroid/database/AppVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdatableApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/DbUpdateChecker;->getUpdatableApps$default(Lorg/fdroid/database/DbUpdateChecker;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdatableApps(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/DbUpdateChecker;->getUpdatableApps$default(Lorg/fdroid/database/DbUpdateChecker;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getUpdatableApps(Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/DbUpdateChecker;->getUpdatableApps$default(Lorg/fdroid/database/DbUpdateChecker;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getUpdatableApps(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/UpdatableApp;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v7, Lorg/fdroid/database/DbUpdateChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "getInstalledPackages(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 43
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, v7, Lorg/fdroid/database/DbUpdateChecker;->appPrefsDao:Lorg/fdroid/database/AppPrefsDaoInt;

    .line 44
    invoke-interface {v2, v1}, Lorg/fdroid/database/AppPrefsDaoInt;->getPreferredRepos(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 46
    new-instance v10, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object v2, v7, Lorg/fdroid/database/DbUpdateChecker;->versionDao:Lorg/fdroid/database/VersionDaoInt;

    .line 47
    invoke-interface {v2, v1}, Lorg/fdroid/database/VersionDaoInt;->getVersions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v11, "No preferred repo for "

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/database/Version;

    .line 48
    invoke-virtual {v2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz p2, :cond_2

    .line 51
    invoke-virtual {v2}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 52
    :cond_2
    invoke-virtual {v2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3
    check-cast v4, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    invoke-virtual {v2}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in repo "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 32
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 56
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, v14

    move-object v3, v13

    move-object/from16 v5, p1

    move/from16 v6, p3

    .line 58
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/database/DbUpdateChecker;->getVersion(Ljava/util/List;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;Z)Lorg/fdroid/database/Version;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 67
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 71
    invoke-static {v13}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v3

    .line 72
    invoke-virtual {v0}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 69
    :goto_3
    invoke-direct {p0, v0, v3, v4, v1}, Lorg/fdroid/database/DbUpdateChecker;->getUpdatableApp(Lorg/fdroid/database/Version;JZ)Lorg/fdroid/database/UpdatableApp;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 74
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-object v8
.end method
