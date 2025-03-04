.class public Lorg/fdroid/fdroid/views/StatusBanner;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "StatusBanner.java"


# instance fields
.field private final dataWifiChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private isUpdatingRepos:Z

.field private networkState:I

.field private final onNetworkStateChanged:Landroid/content/BroadcastReceiver;

.field private final onRepoUpdateChanged:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer;"
        }
    .end annotation
.end field

.field private overDataState:I

.field private overWiFiState:I

.field private final preferences:Landroid/content/SharedPreferences;

.field private final repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;


# direct methods
.method static bridge synthetic -$$Nest$fputisUpdatingRepos(Lorg/fdroid/fdroid/views/StatusBanner;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->isUpdatingRepos:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnetworkState(Lorg/fdroid/fdroid/views/StatusBanner;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->networkState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoverDataState(Lorg/fdroid/fdroid/views/StatusBanner;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->overDataState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoverWiFiState(Lorg/fdroid/fdroid/views/StatusBanner;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->overWiFiState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBannerTextAndVisibility(Lorg/fdroid/fdroid/views/StatusBanner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/StatusBanner;->setBannerTextAndVisibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/StatusBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lorg/fdroid/fdroid/views/StatusBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    iput p2, p0, Lorg/fdroid/fdroid/views/StatusBanner;->networkState:I

    .line 178
    new-instance p2, Lorg/fdroid/fdroid/views/StatusBanner$1;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/StatusBanner$1;-><init>(Lorg/fdroid/fdroid/views/StatusBanner;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/StatusBanner;->onRepoUpdateChanged:Landroidx/lifecycle/Observer;

    .line 186
    new-instance p2, Lorg/fdroid/fdroid/views/StatusBanner$2;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/StatusBanner$2;-><init>(Lorg/fdroid/fdroid/views/StatusBanner;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/StatusBanner;->onNetworkStateChanged:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance p2, Lorg/fdroid/fdroid/views/StatusBanner$3;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/views/StatusBanner$3;-><init>(Lorg/fdroid/fdroid/views/StatusBanner;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/views/StatusBanner;->dataWifiChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/fdroid/fdroid/R$dimen;->banner__padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 70
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    const p2, -0xb5b5b6

    .line 71
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p2, 0x11

    .line 72
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, -0x1

    .line 73
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lorg/fdroid/fdroid/views/StatusBanner;->preferences:Landroid/content/SharedPreferences;

    .line 76
    invoke-static {p1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    .line 77
    invoke-virtual {p1}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdating()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->isUpdatingRepos:Z

    return-void
.end method

.method public static getLocalRepos(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/database/Repository;

    .line 157
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fdroid/fdroid/views/StatusBanner;->isLocalRepoAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getMirrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fdroid/download/Mirror;

    .line 161
    invoke-virtual {v3}, Lorg/fdroid/download/Mirror;->isHttp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static isLocalRepoAddress(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "bluetooth"

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content"

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBannerTextAndVisibility()V
    .locals 8

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->isUpdatingRepos:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$string;->banner_updating_repositories:I

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->networkState:I

    if-eqz v0, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->overDataState:I

    const/16 v2, 0x8

    if-nez v0, :cond_6

    iget v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->overWiFiState:I

    if-nez v0, :cond_6

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/index/RepoManager;->getRepositories()Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lorg/fdroid/fdroid/views/StatusBanner;->getLocalRepos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v3, "system"

    const-string v4, "vendor"

    const-string v5, "odm"

    const-string v6, "oem"

    const-string v7, "product"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/fdroid/database/Repository;

    .line 130
    invoke-virtual {v6}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 131
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v1

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez v5, :cond_4

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    :goto_1
    sget v0, Lorg/fdroid/fdroid/R$string;->banner_no_data_or_wifi:I

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 140
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 145
    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    :goto_2
    sget v0, Lorg/fdroid/fdroid/R$string;->banner_no_internet:I

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 82
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->getNetworkState(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->networkState:I

    iget-object v1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->onNetworkStateChanged:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    .line 88
    invoke-virtual {v0}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdating()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->isUpdatingRepos:Z

    iget-object v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    .line 89
    invoke-virtual {v0}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdatingLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->onRepoUpdateChanged:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 91
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getOverData()I

    move-result v0

    iput v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->overDataState:I

    .line 92
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getOverWifi()I

    move-result v0

    iput v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->overWiFiState:I

    iget-object v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->dataWifiChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 93
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 95
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/StatusBanner;->setBannerTextAndVisibility()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    .line 102
    invoke-virtual {v1}, Lorg/fdroid/fdroid/RepoUpdateManager;->isUpdatingLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/StatusBanner;->onRepoUpdateChanged:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->onNetworkStateChanged:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/StatusBanner;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/StatusBanner;->dataWifiChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 104
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
