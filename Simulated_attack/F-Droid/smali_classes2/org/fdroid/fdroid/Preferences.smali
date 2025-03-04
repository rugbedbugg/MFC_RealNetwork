.class public final Lorg/fdroid/fdroid/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lorg/fdroid/fdroid/IPreferencesIpfs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/Preferences$Theme;,
        Lorg/fdroid/fdroid/Preferences$ChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_IPFS_GATEWAYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LAST_UPDATE_CHECK:I = -0x1

.field private static final DEFAULT_PANIC_EXIT:Z = true

.field public static final DEFAULT_PROXY_HOST:Ljava/lang/String; = "127.0.0.1"

.field public static final DEFAULT_PROXY_PORT:I = 0x1fb6

.field private static final DEFAULT_SHOW_NFC_DURING_SWAP:Z = true

.field private static final IGNORED_B:Z = false

.field private static final IGNORED_I:I = -0x1

.field private static final OLD_PREF_CACHE_APK:Ljava/lang/String; = "cacheDownloaded"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OLD_PREF_UPDATE_INTERVAL:Ljava/lang/String; = "updateInterval"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OLD_PREF_UPDATE_ON_WIFI_ONLY:Ljava/lang/String; = "updateOnWifiOnly"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_NETWORK_ALWAYS:I = 0x2

.field public static final OVER_NETWORK_NEVER:I = 0x0

.field private static final OVER_NETWORK_ON_DEMAND:I = 0x1

.field public static final PREF_AUTO_DOWNLOAD_INSTALL_UPDATES:Ljava/lang/String; = "updateAutoDownload"

.field private static final PREF_BOTTOM_NAVIGATION_VIEW_NAME:Ljava/lang/String; = "bottomNavigationViewName"

.field private static final PREF_DEFAULT_REPO_ADDRESSES:Ljava/lang/String; = "defaultRepoAddresses"

.field public static final PREF_DNS_CACHE:Ljava/lang/String; = "dnsCache"

.field public static final PREF_ENABLE_PROXY:Ljava/lang/String; = "enableProxy"

.field public static final PREF_EXPERT:Ljava/lang/String; = "expert"

.field public static final PREF_FORCE_OLD_INDEX:Ljava/lang/String; = "forceOldIndex"

.field public static final PREF_FORCE_OLD_INSTALLER:Ljava/lang/String; = "forceOldInstaller"

.field public static final PREF_FORCE_TOUCH_APPS:Ljava/lang/String; = "ignoreTouchscreen"

.field private static final PREF_HIDE_ALL_NOTIFICATIONS:Ljava/lang/String; = "hideAllNotifications"

.field private static final PREF_HIDE_ON_LONG_PRESS_SEARCH:Ljava/lang/String; = "hideOnLongPressSearch"

.field public static final PREF_IPFSGW_DISABLED_DEFAULTS_LIST:Ljava/lang/String; = "ipfsGwDisabledDefaultsList"

.field public static final PREF_IPFSGW_USER_LIST:Ljava/lang/String; = "ipfsGwUserList"

.field public static final PREF_KEEP_CACHE_TIME:Ljava/lang/String; = "keepCacheFor"

.field public static final PREF_KEEP_INSTALL_HISTORY:Ljava/lang/String; = "keepInstallHistory"

.field public static final PREF_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PREF_LAST_UPDATE_CHECK:Ljava/lang/String; = "lastUpdateCheck"

.field public static final PREF_LOCAL_REPO_HTTPS:Ljava/lang/String; = "localRepoHttps"

.field public static final PREF_LOCAL_REPO_NAME:Ljava/lang/String; = "localRepoName"

.field public static final PREF_OVER_DATA:Ljava/lang/String; = "overData"

.field public static final PREF_OVER_WIFI:Ljava/lang/String; = "overWifi"

.field public static final PREF_PANIC_EXIT:Ljava/lang/String; = "pref_panic_exit"

.field public static final PREF_PANIC_HIDE:Ljava/lang/String; = "pref_panic_hide"

.field public static final PREF_PANIC_RESET_REPOS:Ljava/lang/String; = "pref_panic_reset_repos"

.field private static final PREF_PANIC_TMP_SELECTED_SET:Ljava/lang/String; = "panicTmpSelectedSet"

.field private static final PREF_PANIC_WIPE_SET:Ljava/lang/String; = "panicWipeSet"

.field public static final PREF_PREVENT_SCREENSHOTS:Ljava/lang/String; = "preventScreenshots"

.field public static final PREF_PRIVILEGED_INSTALLER:Ljava/lang/String; = "privilegedInstaller"

.field private static final PREF_PROMPT_TO_SEND_CRASH_REPORTS:Ljava/lang/String; = "promptToSendCrashReports"

.field public static final PREF_PROXY_HOST:Ljava/lang/String; = "proxyHost"

.field public static final PREF_PROXY_PORT:Ljava/lang/String; = "proxyPort"

.field private static final PREF_SCAN_REMOVABLE_STORAGE:Ljava/lang/String; = "scanRemovableStorage"

.field public static final PREF_SEND_TO_FDROID_METRICS:Ljava/lang/String; = "sendToFdroidMetrics"

.field private static final PREF_SEND_VERSION_AND_UUID_TO_SERVERS:Ljava/lang/String; = "sendVersionAndUUIDToServers"

.field public static final PREF_SHOW_ANTI_FEATURES:Ljava/lang/String; = "showAntiFeatures"

.field public static final PREF_SHOW_INCOMPAT_VERSIONS:Ljava/lang/String; = "incompatibleVersions"

.field private static final PREF_SHOW_NFC_DURING_SWAP:Ljava/lang/String; = "showNfcDuringSwap"

.field public static final PREF_THEME:Ljava/lang/String; = "theme"

.field private static final PREF_UNSTABLE_UPDATES:Ljava/lang/String; = "unstableUpdates"

.field public static final PREF_UPDATE_INTERVAL:Ljava/lang/String; = "updateIntervalSeekBarPosition"

.field public static final PREF_UPDATE_NOTIFICATION_ENABLED:Ljava/lang/String; = "updateNotify"

.field public static final PREF_USE_DNS_CACHE:Ljava/lang/String; = "useDnsCache"

.field public static final PREF_USE_IPFS_GATEWAYS:Ljava/lang/String; = "useIpfsGateways"

.field public static final PREF_USE_PURE_BLACK_DARK_THEME:Ljava/lang/String; = "usePureBlackDarkTheme"

.field public static final PREF_USE_TOR:Ljava/lang/String; = "useTor"

.field private static final TAG:Ljava/lang/String; = "Preferences"

.field public static final UPDATE_INTERVAL_DISABLED:J = 0x7fffffffffffffffL

.field public static final UPDATE_INTERVAL_VALUES:[J

.field private static instance:Lorg/fdroid/fdroid/Preferences;


# instance fields
.field private final initialized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final localRepoHttpsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/Preferences$ChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final localRepoNameListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/Preferences$ChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Landroid/content/SharedPreferences;

.field private final showAppsRequiringAntiFeaturesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/Preferences$ChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private showAppsWithAntiFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final showIncompatibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/Preferences$ChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final unstableUpdatesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/Preferences$ChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://gateway.ipfs.io/ipfs/"

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/Preferences;->DEFAULT_IPFS_GATEWAYS:Ljava/util/List;

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/fdroid/fdroid/Preferences;->UPDATE_INTERVAL_VALUES:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x7fffffffffffffffL
        0x48190800
        0x240c8400
        0x5265c00
        0x2932e00
        0xdbba00
        0x36ee80
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->initialized:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showAppsRequiringAntiFeaturesListeners:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->localRepoNameListeners:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->localRepoHttpsListeners:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->unstableUpdatesListeners:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showIncompatibleListeners:Ljava/util/List;

    sget v0, Lorg/fdroid/fdroid/R$xml;->preferences:I

    const/4 v1, 0x1

    .line 85
    invoke-static {p1, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 86
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 87
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "localRepoName"

    .line 89
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/fdroid/fdroid/Preferences;->getDefaultLocalRepoName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v3, "updateAutoDownload"

    .line 92
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    invoke-static {p1}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isExtensionInstalledCorrectly(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static get()Lorg/fdroid/fdroid/Preferences;
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/Preferences;->instance:Lorg/fdroid/fdroid/Preferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Preferences"

    const-string v1, "Attempted to access preferences before it has been initialized in FDroidApp"

    .line 869
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDefaultLocalRepoName()Ljava/lang/String;
    .locals 4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x270f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    .line 446
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnstableUpdates()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "unstableUpdates"

    const/4 v2, 0x0

    .line 379
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->initialized:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isInitialized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->initialized:Ljava/util/Map;

    .line 204
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->initialized:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private listMapToString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 596
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private migrateOnlyOnWifi(Landroid/content/SharedPreferences$Editor;)Z
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "updateOnWifiOnly"

    .line 297
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    .line 302
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v3, 0x2

    const-string v4, "overWifi"

    .line 310
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "overData"

    .line 311
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 312
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return v2
.end method

.method private migrateUpdateIntervalStringToInt(Landroid/content/SharedPreferences$Editor;)Z
    .locals 6

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "updateInterval"

    .line 267
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/16 v3, 0x18

    .line 271
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 272
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :cond_1
    const-string v3, "4"

    .line 274
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    const-string v3, "12"

    .line 276
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const-string v3, "24"

    .line 278
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    :cond_4
    move v2, v5

    goto :goto_0

    :cond_5
    const-string v3, "168"

    .line 280
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x2

    goto :goto_0

    :cond_6
    const-string v3, "336"

    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    const-string v3, "0"

    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const-string v0, "updateIntervalSeekBarPosition"

    .line 288
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 289
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return v4
.end method

.method private setPrefDefaultRepoAddresses(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 758
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "defaultRepoAddresses"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/Preferences;->instance:Lorg/fdroid/fdroid/Preferences;

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Lorg/fdroid/fdroid/Preferences;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/fdroid/fdroid/Preferences;->instance:Lorg/fdroid/fdroid/Preferences;

    return-void

    :cond_0
    const-string p0, "Preferences"

    const-string v0, "Attempted to reinitialize preferences after it has already been initialized in FDroidApp"

    .line 859
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setupForTests(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/fdroid/fdroid/Preferences;->instance:Lorg/fdroid/fdroid/Preferences;

    .line 849
    invoke-static {p0}, Lorg/fdroid/fdroid/Preferences;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private stringToListMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\n"

    .line 607
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    const-string v5, " "

    .line 608
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    .line 610
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 611
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private uninitialize(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->initialized:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 212
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method clearLanguage()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 454
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public expertMode()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "expert"

    const/4 v2, 0x0

    .line 421
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public forceOldInstaller()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "forceOldInstaller"

    const/4 v2, 0x0

    .line 224
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method forceTouchApps()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ignoreTouchscreen"

    const/4 v2, 0x0

    .line 429
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getActiveIpfsGateways()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 747
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getIpfsGwUserList()Ljava/util/List;

    move-result-object v0

    .line 748
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getIpfsGwDisabledDefaults()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/fdroid/fdroid/Preferences;->DEFAULT_IPFS_GATEWAYS:Ljava/util/List;

    .line 749
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 750
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 751
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBackendReleaseChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-direct {p0}, Lorg/fdroid/fdroid/Preferences;->getUnstableUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Beta"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomNavigationViewName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "bottomNavigationViewName"

    const-string v2, "org.fdroid.fdroid.views.main.MainActivity.VIEW_LATEST"

    .line 363
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRepoAddresses(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "empty"

    .line 762
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "defaultRepoAddresses"

    .line 763
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const-string v0, "Preferences"

    const-string v1, "Parsing XML to get default repo addresses..."

    .line 765
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Lorg/fdroid/fdroid/data/DBHelper;->getDefaultRepoAddresses(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 767
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/Preferences;->setPrefDefaultRepoAddresses(Ljava/util/Set;)V

    :cond_0
    return-object v1
.end method

.method public getDnsCache()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "dnsCache"

    const-string v3, ""

    .line 567
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 572
    :cond_0
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/Preferences;->stringToListMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 573
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 575
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 577
    :try_start_0
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception thrown when converting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Preferences"

    invoke-static {v8, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 583
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getIpfsGwDisabledDefaults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ipfsGwDisabledDefaultsList"

    const-string v2, "[]"

    .line 668
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->parseJsonStringArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIpfsGwUserList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ipfsGwUserList"

    const-string v2, "[]"

    .line 657
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->parseJsonStringArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeepCacheTime()J
    .locals 7

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "keepCacheFor"

    .line 320
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "604800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "31449600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "86400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "3600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "2147483647"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "2592000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    iget-object v1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "cacheDownloaded"

    .line 337
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 338
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide v0, 0x7fffffffffffffffL

    .line 339
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 341
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 342
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    :cond_7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v3

    :pswitch_0
    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-wide v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d5ce3ec -> :sswitch_5
        -0x1571abd4 -> :sswitch_4
        0x17ffa3 -> :sswitch_3
        0x32e7976 -> :sswitch_2
        0x2da0c83b -> :sswitch_1
        0x5ee2953e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "language"

    const-string v2, ""

    .line 450
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateCheck()J
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "lastUpdateCheck"

    const-wide/16 v2, -0x1

    .line 355
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalRepoName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "localRepoName"

    .line 458
    invoke-direct {p0}, Lorg/fdroid/fdroid/Preferences;->getDefaultLocalRepoName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverData()I
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "overData"

    const/4 v2, -0x1

    .line 501
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOverWifi()I
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "overWifi"

    const/4 v2, -0x1

    .line 497
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPanicTmpSelectedSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "panicTmpSelectedSet"

    .line 699
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPanicWipeSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "panicWipeSet"

    .line 707
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "proxyHost"

    const-string v2, "127.0.0.1"

    .line 631
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPort()I
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/16 v1, 0x1fb6

    .line 635
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxyPort"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0xffff

    .line 637
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    const-string v3, "[^0-9]"

    const-string v4, ""

    .line 641
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    return v1
.end method

.method public getReleaseChannel()Ljava/lang/String;
    .locals 1

    .line 383
    invoke-direct {p0}, Lorg/fdroid/fdroid/Preferences;->getUnstableUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Beta"

    return-object v0

    :cond_0
    const-string v0, "Stable"

    return-object v0
.end method

.method public getTheme()Lorg/fdroid/fdroid/Preferences$Theme;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const/4 v2, 0x0

    .line 433
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Preferences$Theme;->valueOf(Ljava/lang/String;)Lorg/fdroid/fdroid/Preferences$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateInterval()J
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "updateIntervalSeekBarPosition"

    const/4 v2, -0x1

    .line 245
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lorg/fdroid/fdroid/Preferences;->UPDATE_INTERVAL_VALUES:[J

    .line 246
    aget-wide v0, v1, v0

    return-wide v0
.end method

.method hideAllNotifications()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hideAllNotifications"

    const/4 v2, 0x0

    .line 719
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hideOnLongPressSearch()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hideOnLongPressSearch"

    const/4 v2, 0x0

    .line 695
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isAutoDownloadEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "updateAutoDownload"

    const/4 v2, 0x0

    .line 470
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackgroundDownloadAllowed()Z
    .locals 4

    .line 478
    sget v0, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 479
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getOverWifi()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 480
    :cond_1
    sget v0, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    if-ne v0, v2, :cond_2

    .line 481
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getOverData()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isDnsCacheEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "useDnsCache"

    const/4 v2, 0x0

    .line 529
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isForceOldIndexEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "forceOldIndex"

    const/4 v2, 0x0

    .line 220
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isIndexNeverUpdated()Z
    .locals 4

    .line 375
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getLastUpdateCheck()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIpfsEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "useIpfsGateways"

    const/4 v2, 0x0

    .line 649
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isKeepingInstallHistory()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "keepInstallHistory"

    const/4 v2, 0x0

    .line 401
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLocalRepoHttpsEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isOnDemandDownloadAllowed()Z
    .locals 4

    .line 487
    sget v0, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    sget v0, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    sget v0, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    if-ne v0, v3, :cond_1

    .line 491
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getOverData()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 489
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getOverWifi()I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public isPrivilegedInstallerEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "privilegedInstaller"

    const/4 v2, 0x1

    .line 238
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isProxyEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "enableProxy"

    const/4 v2, 0x0

    .line 627
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPureBlack()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "usePureBlackDarkTheme"

    const/4 v2, 0x0

    .line 437
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isScanRemovableStorageEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "scanRemovableStorage"

    const/4 v2, 0x1

    .line 462
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSendingToFDroidMetrics()Z
    .locals 3

    .line 405
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->isKeepingInstallHistory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "sendToFdroidMetrics"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isTorEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "useTor"

    const/4 v2, 0x0

    .line 623
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUpdateNotificationEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "updateNotify"

    const/4 v2, 0x1

    .line 466
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public migrateOldPreferences()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/Preferences;->migrateUpdateIntervalStringToInt(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/Preferences;->migrateOnlyOnWifi(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalidating preference \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Preferences"

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/Preferences;->uninitialize(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "showAntiFeatures"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string p1, "incompatibleVersions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string p1, "localRepoName"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string p1, "unstableUpdates"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string p1, "localRepoHttps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/Preferences;->showAppsRequiringAntiFeaturesListeners:Ljava/util/List;

    .line 799
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/Preferences$ChangeListener;

    .line 800
    invoke-interface {p2}, Lorg/fdroid/fdroid/Preferences$ChangeListener;->onPreferenceChange()V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lorg/fdroid/fdroid/Preferences;->showIncompatibleListeners:Ljava/util/List;

    .line 819
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/Preferences$ChangeListener;

    .line 820
    invoke-interface {p2}, Lorg/fdroid/fdroid/Preferences$ChangeListener;->onPreferenceChange()V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lorg/fdroid/fdroid/Preferences;->localRepoNameListeners:Ljava/util/List;

    .line 804
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/Preferences$ChangeListener;

    .line 805
    invoke-interface {p2}, Lorg/fdroid/fdroid/Preferences$ChangeListener;->onPreferenceChange()V

    goto :goto_3

    :pswitch_3
    iget-object p1, p0, Lorg/fdroid/fdroid/Preferences;->unstableUpdatesListeners:Ljava/util/List;

    .line 814
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/Preferences$ChangeListener;

    .line 815
    invoke-interface {p2}, Lorg/fdroid/fdroid/Preferences$ChangeListener;->onPreferenceChange()V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lorg/fdroid/fdroid/Preferences;->localRepoHttpsListeners:Ljava/util/List;

    .line 809
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/Preferences$ChangeListener;

    .line 810
    invoke-interface {p2}, Lorg/fdroid/fdroid/Preferences$ChangeListener;->onPreferenceChange()V

    goto :goto_5

    :cond_5
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78358292 -> :sswitch_4
        -0x7356e8ea -> :sswitch_3
        -0x6f391658 -> :sswitch_2
        -0x5ae7688c -> :sswitch_1
        0x5fc255c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public panicExit()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_panic_exit"

    const/4 v2, 0x1

    .line 683
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public panicHide()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_panic_hide"

    const/4 v2, 0x0

    .line 687
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public panicResetRepos()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_panic_reset_repos"

    const/4 v2, 0x0

    .line 691
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public preventScreenshots()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "preventScreenshots"

    const/4 v2, 0x0

    .line 679
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method promptToSendCrashReports()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "promptToSendCrashReports"

    const/4 v2, 0x0

    .line 216
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public queryDnsCache(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getDnsCache()Ljava/util/HashMap;

    move-result-object v0

    .line 557
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 561
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public registerAppsRequiringAntiFeaturesChangeListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showAppsRequiringAntiFeaturesListeners:Ljava/util/List;

    .line 773
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerLocalRepoHttpsListeners(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->localRepoHttpsListeners:Ljava/util/List;

    .line 827
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerShowIncompatibleListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showIncompatibleListeners:Ljava/util/List;

    .line 785
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method registerUnstableUpdatesChangeListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->unstableUpdatesListeners:Ljava/util/List;

    .line 781
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method sendVersionAndUUIDToServers()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "sendVersionAndUUIDToServers"

    const/4 v2, 0x0

    .line 727
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBottomNavigationViewName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bottomNavigationViewName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setDefaultForDataOnlyConnection(Landroid/content/Context;)V
    .locals 2

    const-class v0, Landroid/net/ConnectivityManager;

    .line 508
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 517
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 519
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "overData"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDnsCache(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 546
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 548
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 550
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 552
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "dnsCache"

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/Preferences;->listMapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDnsCacheEnabledValue(Z)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 525
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useDnsCache"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setExpertMode(Z)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIpfsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useIpfsGateways"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIpfsGwDisabledDefaults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ipfsGwDisabledDefaultsList"

    .line 674
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->toJsonStringArray(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 675
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIpfsGwUserList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 661
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ipfsGwUserList"

    .line 663
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->toJsonStringArray(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 664
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setLastUpdateCheck(J)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastUpdateCheck"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPanicTmpSelectedSet(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "panicTmpSelectedSet"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPanicWipeSet(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 711
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "panicWipeSet"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShowNfcDuringSwap(Z)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showNfcDuringSwap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUnstableUpdates(Z)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unstableUpdates"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public showAppsWithAntiFeatures()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "showAntiFeatures"

    .line 737
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/Preferences;->isInitialized(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/Preferences;->initialize(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    .line 739
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showAppsWithAntiFeatures:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showAppsWithAntiFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public showIncompatibleVersions()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "incompatibleVersions"

    const/4 v2, 0x0

    .line 409
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showNfcDuringSwap()Z
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "showNfcDuringSwap"

    const/4 v2, 0x1

    .line 413
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterAppsRequiringAntiFeaturesChangeListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showAppsRequiringAntiFeaturesListeners:Ljava/util/List;

    .line 777
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterLocalRepoHttpsListeners(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->localRepoHttpsListeners:Ljava/util/List;

    .line 831
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterShowIncompatibleListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/Preferences;->showIncompatibleListeners:Ljava/util/List;

    .line 789
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateDnsCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 534
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getDnsCache()Ljava/util/HashMap;

    move-result-object v0

    .line 538
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/Preferences;->setDnsCache(Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method
