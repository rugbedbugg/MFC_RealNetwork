.class public Lorg/fdroid/fdroid/nearby/SwapSuccessView;
.super Lorg/fdroid/fdroid/nearby/SwapView;
.source "SwapSuccessView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwapSuccessView"


# instance fields
.field private adapter:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

.field private repo:Lorg/fdroid/database/Repository;


# direct methods
.method public static synthetic $r8$lambda$_hLnjiTWEbJSNi6P9eWiReT080Y(Lorg/fdroid/fdroid/nearby/SwapSuccessView;Lorg/fdroid/index/v1/IndexV1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->onIndexReceived(Lorg/fdroid/index/v1/IndexV1;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetrepo(Lorg/fdroid/fdroid/nearby/SwapSuccessView;)Lorg/fdroid/database/Repository;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->repo:Lorg/fdroid/database/Repository;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private onIndexReceived(Lorg/fdroid/index/v1/IndexV1;)V
    .locals 13

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    new-instance v2, Lorg/fdroid/fdroid/CompatibilityChecker;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fdroid/fdroid/CompatibilityChecker;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fdroid/index/v1/AppV1;

    .line 94
    new-instance v5, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v5}, Lorg/fdroid/fdroid/data/App;-><init>()V

    .line 95
    invoke-virtual {v4}, Lorg/fdroid/index/v1/AppV1;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {v4}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "icons/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/fdroid/index/v1/AppV1;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/fdroid/index/v2/FileV2;->fromPath(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v4

    iput-object v4, v5, Lorg/fdroid/fdroid/data/App;->iconFile:Lorg/fdroid/index/v2/FileV2;

    const/4 v4, 0x0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 100
    invoke-static {v6}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    iput-wide v6, v5, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    new-instance v6, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {v6}, Lorg/fdroid/fdroid/data/Apk;-><init>()V

    .line 104
    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1;->getPackages()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v5, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_3

    .line 105
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 106
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/fdroid/index/v1/PackageV1;

    .line 107
    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getVersionCode()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 108
    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getVersionCode()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v5, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    .line 110
    :cond_0
    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getVersionCode()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 111
    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getVersionCode()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v6, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 113
    :cond_1
    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getVersionName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lorg/fdroid/fdroid/data/Apk;->versionName:Ljava/lang/String;

    .line 114
    new-instance v8, Lorg/fdroid/index/v2/FileV1;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getApkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getHash()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/fdroid/index/v2/FileV1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    iput-object v8, v6, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    .line 115
    new-instance v8, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getUsesPermission()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-virtual {v7}, Lorg/fdroid/index/v1/PackageV1;->getUsesPermission()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/fdroid/index/v1/PermissionV1;

    .line 118
    invoke-virtual {v9}, Lorg/fdroid/index/v1/PermissionV1;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-array v4, v4, [Ljava/lang/String;

    .line 120
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v6, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    .line 121
    array-length v4, v4

    if-nez v4, :cond_3

    iput-object v12, v6, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    :cond_3
    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, v6, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    iget-object v4, v5, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    iput-object v4, v6, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->repo:Lorg/fdroid/database/Repository;

    .line 126
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lorg/fdroid/fdroid/data/Apk;->repoAddress:Ljava/lang/String;

    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->repo:Lorg/fdroid/database/Repository;

    .line 127
    invoke-virtual {v4}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lorg/fdroid/fdroid/data/Apk;->canonicalRepoAddress:Ljava/lang/String;

    .line 128
    invoke-virtual {v6, v2}, Lorg/fdroid/fdroid/data/Apk;->setCompatibility(Lorg/fdroid/fdroid/CompatibilityChecker;)V

    iget-boolean v4, v6, Lorg/fdroid/fdroid/data/Apk;->compatible:Z

    iput-boolean v4, v5, Lorg/fdroid/fdroid/data/App;->compatible:Z

    .line 131
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v5, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->adapter:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    .line 134
    invoke-virtual {p1, v0, v1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->setApps(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 80
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->getPeerRepo()Lorg/fdroid/database/Repository;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->repo:Lorg/fdroid/database/Repository;

    .line 82
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView;Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter-IA;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->adapter:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    sget v0, Lorg/fdroid/fdroid/R$id;->list:I

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView;->adapter:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    .line 84
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->getIndex()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v1

    new-instance v2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
