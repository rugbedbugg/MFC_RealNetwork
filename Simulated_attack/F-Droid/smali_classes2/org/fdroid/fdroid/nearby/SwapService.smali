.class public Lorg/fdroid/fdroid/nearby/SwapService;
.super Landroid/app/Service;
.source "SwapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/SwapService$Binder;
    }
.end annotation


# static fields
.field private static final KEY_APPS_TO_SWAP:Ljava/lang/String; = "appsToSwap"

.field private static final KEY_BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetoothEnabled"

.field private static final KEY_BLUETOOTH_ENABLED_BEFORE_SWAP:Ljava/lang/String; = "bluetoothEnabledBeforeSwap"

.field private static final KEY_BLUETOOTH_NAME_BEFORE_SWAP:Ljava/lang/String; = "bluetoothNameBeforeSwap"

.field private static final KEY_HOTSPOT_ACTIVATED:Ljava/lang/String; = "hotspotEnabled"

.field private static final KEY_HOTSPOT_ACTIVATED_BEFORE_SWAP:Ljava/lang/String; = "hotspotEnabledBeforeSwap"

.field private static final KEY_WIFI_ENABLED:Ljava/lang/String; = "wifiEnabled"

.field private static final KEY_WIFI_ENABLED_BEFORE_SWAP:Ljava/lang/String; = "wifiEnabledBeforeSwap"

.field private static final NOTIFICATION:I = 0x1

.field private static final SHARED_PREFERENCES:Ljava/lang/String; = "swap-state"

.field private static final TAG:Ljava/lang/String; = "SwapService"

.field private static final TIMEOUT:I = 0xdbba0

.field private static bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private static pollConnectedSwapRepoTimer:Ljava/util/Timer;

.field private static swapPreferences:Landroid/content/SharedPreferences;

.field private static wifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private final activePeers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fdroid/fdroid/nearby/peers/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final appsToSwap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final binder:Lorg/fdroid/fdroid/nearby/SwapService$Binder;

.field private final bluetoothPeerFound:Landroid/content/BroadcastReceiver;

.field private final bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

.field private final bonjourPeerFound:Landroid/content/BroadcastReceiver;

.field private final bonjourPeerRemoved:Landroid/content/BroadcastReceiver;

.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final httpsEnabledListener:Lorg/fdroid/fdroid/Preferences$ChangeListener;

.field private final index:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final indexError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final onWifiChange:Landroid/content/BroadcastReceiver;

.field private peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

.field private peerRepo:Lorg/fdroid/database/Repository;

.field private timer:Ljava/util/Timer;


# direct methods
.method public static synthetic $r8$lambda$KrA5ev9f3bacz6m3F7xvU9SIfRA(Lorg/fdroid/fdroid/nearby/SwapService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->restartWiFiServices()V

    return-void
.end method

.method public static synthetic $r8$lambda$ULAvyR4Y-NRyF0R8z5yEWJdRNiI(Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->lambda$askServerToSwapWithUs$1(Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jrIgrQotCSuJCxWgM-Mmpc_hasc(Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->lambda$getVerifiedRepoIndex$0(Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xN9VygL79lSHtX8IXWP_bja-76o(Lorg/fdroid/fdroid/nearby/SwapService;Lorg/fdroid/database/Repository;Ljava/lang/Throwable;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapService;->lambda$askServerToSwapWithUs$2(Lorg/fdroid/database/Repository;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactivePeers(Lorg/fdroid/fdroid/nearby/SwapService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->activePeers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpeer(Lorg/fdroid/fdroid/nearby/SwapService;)Lorg/fdroid/fdroid/nearby/peers/Peer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconnectTo(Lorg/fdroid/fdroid/nearby/SwapService;Lorg/fdroid/fdroid/nearby/peers/Peer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapService;->connectTo(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartWiFiServices(Lorg/fdroid/fdroid/nearby/SwapService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->restartWiFiServices()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->activePeers:Ljava/util/Set;

    .line 89
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->index:Landroidx/lifecycle/MutableLiveData;

    .line 90
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->indexError:Landroidx/lifecycle/MutableLiveData;

    .line 349
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$Binder;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$Binder;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->binder:Lorg/fdroid/fdroid/nearby/SwapService$Binder;

    .line 359
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 599
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->httpsEnabledListener:Lorg/fdroid/fdroid/Preferences$ChangeListener;

    .line 601
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$3;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->onWifiChange:Landroid/content/BroadcastReceiver;

    .line 611
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$4;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$4;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

    .line 627
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$5;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$5;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothPeerFound:Landroid/content/BroadcastReceiver;

    .line 634
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$6;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$6;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bonjourPeerFound:Landroid/content/BroadcastReceiver;

    .line 641
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$7;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$7;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bonjourPeerRemoved:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private askServerToSwapWithUs(Lorg/fdroid/database/Repository;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 420
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/database/Repository;)V

    .line 421
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    .line 446
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    .line 447
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v1

    new-instance v2, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;Lorg/fdroid/database/Repository;)V

    .line 448
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Completable;->onErrorComplete(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 455
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 420
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private connectTo(Lorg/fdroid/fdroid/nearby/peers/Peer;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

    const-string v1, "SwapService"

    if-eq p1, v0, :cond_0

    const-string v0, "Oops, got a different peer to swap with than initially planned."

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-interface {p1}, Lorg/fdroid/fdroid/nearby/peers/Peer;->getRepoAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peerRepo:Lorg/fdroid/database/Repository;

    .line 129
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/nearby/SwapService;->updateRepo(Lorg/fdroid/fdroid/nearby/peers/Peer;Lorg/fdroid/database/Repository;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error updating repo."

    .line 131
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->indexError:Landroidx/lifecycle/MutableLiveData;

    .line 132
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 3

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 532
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    .line 533
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 535
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "swap-channel"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lorg/fdroid/fdroid/R$string;->local_repo_running:I

    .line 536
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$string;->touch_to_configure_local_repo:I

    .line 537
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$drawable;->ic_nearby:I

    .line 538
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 539
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static deserializePackages(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 263
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getBluetoothNameBeforeSwap()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bluetoothNameBeforeSwap"

    const/4 v2, 0x0

    .line 324
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBluetoothVisibleUserPreference()Z
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bluetoothEnabled"

    const/4 v2, 0x0

    .line 292
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHotspotActivatedUserPreference()Z
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hotspotEnabled"

    const/4 v2, 0x0

    .line 308
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVerifiedRepoIndex(Lorg/fdroid/database/Repository;Ljava/lang/String;Ljava/io/File;)Lorg/fdroid/index/v1/IndexV1;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/index/SigningException;,
            Ljava/io/IOException;,
            Lorg/fdroid/download/NotFoundException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "index-v1.jar"

    .line 144
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "/index-v1.jar"

    .line 146
    invoke-static {v1}, Lorg/fdroid/index/v2/FileV2;->fromPath(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object v1

    .line 147
    sget-object v2, Lorg/fdroid/fdroid/net/DownloaderFactory;->INSTANCE:Lorg/fdroid/fdroid/net/DownloaderFactory;

    .line 148
    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/fdroid/download/DownloaderFactory;->createWithTryFirstMirror(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lorg/fdroid/download/Downloader;->download()V

    .line 150
    new-instance p0, Lorg/fdroid/index/v1/IndexV1Verifier;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lorg/fdroid/index/v1/IndexV1Verifier;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance p1, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/fdroid/fdroid/nearby/SwapService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fdroid/index/JarIndexVerifier;->getStreamAndVerify(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fdroid/index/v1/IndexV1;

    return-object p0
.end method

.method public static getWifiVisibleUserPreference()Z
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wifiEnabled"

    const/4 v2, 0x0

    .line 300
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$askServerToSwapWithUs$1(Lorg/fdroid/database/Repository;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 422
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->getLocalRepoUri(Lorg/fdroid/database/Repository;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 425
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/fdroid/repo"

    const-string v5, "/request-swap"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v1, "POST"

    .line 427
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 428
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 429
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 431
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :try_start_2
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 433
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 435
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v3, "SwapService"

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asking server at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to swap with us in return (by POSTing to \"/request-swap\" with repo \""

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"): "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 431
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_5
    move-exception p0

    :goto_4
    if-eqz v1, :cond_2

    .line 442
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 444
    :cond_2
    throw p0
.end method

.method private synthetic lambda$askServerToSwapWithUs$2(Lorg/fdroid/database/Repository;Ljava/lang/Throwable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.net.Downloader.action.INTERRUPTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.net.Downloader.extra.ERROR_MESSAGE"

    .line 451
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$getVerifiedRepoIndex$0(Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;
    .locals 1

    .line 152
    sget-object v0, Lorg/fdroid/index/IndexParser;->INSTANCE:Lorg/fdroid/index/IndexParser;

    invoke-static {v0, p0}, Lorg/fdroid/index/IndexParserKt;->parseV1(Lorg/fdroid/index/IndexParser;Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p0

    return-object p0
.end method

.method private persistAppsToSwap()V
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/SwapService;->serializePackages(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appsToSwap"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putBluetoothEnabledBeforeSwap(Z)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bluetoothEnabledBeforeSwap"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putBluetoothNameBeforeSwap(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bluetoothNameBeforeSwap"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putBluetoothVisibleUserPreference(Z)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bluetoothEnabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putHotspotActivatedUserPreference(Z)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hotspotEnabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putHotspotEnabledBeforeSwap(Z)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hotspotEnabledBeforeSwap"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putWifiEnabledBeforeSwap(Z)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wifiEnabledBeforeSwap"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putWifiVisibleUserPreference(Z)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wifiEnabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private restartWiFiServices()V
    .locals 1

    .line 588
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 590
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->restart(Landroid/content/Context;)V

    .line 591
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->restart(Landroid/content/Context;)V

    .line 592
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getWifiVisibleUserPreference()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getHotspotActivatedUserPreference()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->setVisible(Landroid/content/Context;Z)V

    goto :goto_2

    .line 594
    :cond_2
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->stop(Landroid/content/Context;)V

    .line 595
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->stop(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method private static serializePackages(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startPollingConnectedSwapRepo()V
    .locals 4

    .line 544
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->stopPollingConnectedSwapRepo()V

    .line 545
    new-instance v0, Ljava/util/Timer;

    const-string v1, "pollConnectedSwapRepoTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->pollConnectedSwapRepoTimer:Ljava/util/Timer;

    .line 546
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapService$1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapService$1;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    sget-object v1, Lorg/fdroid/fdroid/nearby/SwapService;->pollConnectedSwapRepoTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    .line 554
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/nearby/SwapService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private updateRepo(Lorg/fdroid/fdroid/nearby/peers/Peer;Lorg/fdroid/database/Repository;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/fdroid/index/SigningException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "swap"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapService;->index:Landroidx/lifecycle/MutableLiveData;

    .line 167
    invoke-interface {p1}, Lorg/fdroid/fdroid/nearby/peers/Peer;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/fdroid/fdroid/nearby/SwapService;->getVerifiedRepoIndex(Lorg/fdroid/database/Repository;Ljava/lang/String;Ljava/io/File;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->startPollingConnectedSwapRepo()V
    :try_end_0
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p1, "index.jar"

    .line 171
    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/index/v2/FileV2;->fromPath(Ljava/lang/String;)Lorg/fdroid/index/v2/FileV2;

    move-result-object p1

    const-string v3, "ignored-"

    .line 173
    invoke-static {v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 174
    sget-object v3, Lorg/fdroid/fdroid/net/DownloaderFactory;->INSTANCE:Lorg/fdroid/fdroid/net/DownloaderFactory;

    .line 175
    invoke-virtual {v3, p2, v1, p1, v2}, Lorg/fdroid/download/DownloaderFactory;->createWithTryFirstMirror(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lorg/fdroid/download/Downloader;->download()V

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/fdroid/fdroid/R$string;->swap_connection_indexv0_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 182
    throw p1
.end method

.method public static wasBluetoothEnabledBeforeSwap()Z
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bluetoothEnabledBeforeSwap"

    const/4 v2, 0x0

    .line 316
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static wasHotspotEnabledBeforeSwap()Z
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hotspotEnabledBeforeSwap"

    const/4 v2, 0x0

    .line 340
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static wasWifiEnabledBeforeSwap()Z
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v1, "wifiEnabledBeforeSwap"

    const/4 v2, 0x0

    .line 332
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addCurrentPeerToActive()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->activePeers:Ljava/util/Set;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

    .line 214
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connectToPeer()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->getPeer()Lorg/fdroid/fdroid/nearby/peers/Peer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->getPeer()Lorg/fdroid/fdroid/nearby/peers/Peer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapService;->connectTo(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    .line 118
    invoke-static {}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->getPeer()Lorg/fdroid/fdroid/nearby/peers/Peer;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/fdroid/nearby/peers/Peer;->shouldPromptForSwapBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peerRepo:Lorg/fdroid/database/Repository;

    .line 119
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapService;->askServerToSwapWithUs(Lorg/fdroid/database/Repository;)V

    :cond_0
    return-void

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot connect to peer, no peer has been selected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deselectPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    .line 285
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    .line 286
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->persistAppsToSwap()V

    return-void
.end method

.method public ensureFDroidSelected()V
    .locals 2

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapService;->hasSelectedPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapService;->selectPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActivePeers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/fdroid/fdroid/nearby/peers/Peer;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->activePeers:Ljava/util/Set;

    return-object v0
.end method

.method public getAppsToSwap()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    return-object v0
.end method

.method public getIndex()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->index:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getIndexError()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->indexError:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPeer()Lorg/fdroid/fdroid/nearby/peers/Peer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

    return-object v0
.end method

.method public getPeerRepo()Lorg/fdroid/database/Repository;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peerRepo:Lorg/fdroid/database/Repository;

    return-object v0
.end method

.method public hasSelectedPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    .line 276
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public initTimer()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->timer:Ljava/util/Timer;

    const-string v1, "SwapService"

    if-eqz v0, :cond_0

    const-string v0, "Cancelling existing timeout timer so timeout can be reset."

    .line 570
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->timer:Ljava/util/Timer;

    .line 571
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const-string v0, "Initializing swap timeout to 900000ms minutes"

    .line 574
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->timer:Ljava/util/Timer;

    .line 576
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapService$2;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapService$2;-><init>(Lorg/fdroid/fdroid/nearby/SwapService;)V

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public isConnectingWithPeer()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 479
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->initTimer()V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService;->binder:Lorg/fdroid/fdroid/nearby/SwapService$Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 6

    .line 369
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 370
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 371
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    const-string v0, "swap-state"

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    .line 374
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->start(Landroid/content/Context;)V

    .line 376
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->putBluetoothEnabledBeforeSwap(Z)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 379
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->start(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

    .line 382
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->putWifiEnabledBeforeSwap(Z)V

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    sget-object v3, Lorg/fdroid/fdroid/nearby/SwapService;->swapPreferences:Landroid/content/SharedPreferences;

    const-string v4, "appsToSwap"

    const-string v5, ""

    .line 391
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/fdroid/fdroid/nearby/SwapService;->deserializePackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 393
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapService;->httpsEnabledListener:Lorg/fdroid/fdroid/Preferences$ChangeListener;

    invoke-virtual {v0, v3}, Lorg/fdroid/fdroid/Preferences;->registerLocalRepoHttpsListeners(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapService;->onWifiChange:Landroid/content/BroadcastReceiver;

    .line 395
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "org.fdroid.fdroid.action.WIFI_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothPeerFound:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "BluetoothNewPeer"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bonjourPeerFound:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "BonjourNewPeer"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bonjourPeerRemoved:Landroid/content/BroadcastReceiver;

    .line 398
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "BonjourPeerRemoved"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_4

    .line 401
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getHotspotActivatedUserPreference()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    invoke-static {p0}, Lcc/mvdan/accesspoint/WifiApControl;->getInstance(Landroid/content/Context;)Lcc/mvdan/accesspoint/WifiApControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 404
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->enable()Z

    goto :goto_0

    .line 406
    :cond_3
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getWifiVisibleUserPreference()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    .line 408
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 409
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 415
    :cond_4
    :goto_0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->start(Landroid/content/Context;)V

    .line 416
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getWifiVisibleUserPreference()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getHotspotActivatedUserPreference()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    invoke-static {p0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->setVisible(Landroid/content/Context;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 485
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    const-string v0, "Destroying service, will disable swapping if required, and unregister listeners."

    const-string v1, "SwapService"

    .line 487
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapService;->httpsEnabledListener:Lorg/fdroid/fdroid/Preferences$ChangeListener;

    invoke-virtual {v0, v2}, Lorg/fdroid/fdroid/Preferences;->unregisterLocalRepoHttpsListeners(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapService;->onWifiChange:Landroid/content/BroadcastReceiver;

    .line 489
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothPeerFound:Landroid/content/BroadcastReceiver;

    .line 490
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bonjourPeerFound:Landroid/content/BroadcastReceiver;

    .line 491
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bonjourPeerRemoved:Landroid/content/BroadcastReceiver;

    .line 492
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

    .line 495
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    :cond_0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->stop(Landroid/content/Context;)V

    .line 500
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->stop(Landroid/content/Context;)V

    .line 501
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->stop(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_3

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 503
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->wasWifiEnabledBeforeSwap()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    .line 504
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 506
    :cond_1
    invoke-static {p0}, Lcc/mvdan/accesspoint/WifiApControl;->getInstance(Landroid/content/Context;)Lcc/mvdan/accesspoint/WifiApControl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 509
    :try_start_0
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->wasHotspotEnabledBeforeSwap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->enable()Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v2, "could not access/enable/disable WiFi AP"

    .line 515
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->stopPollingConnectedSwapRepo()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 523
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_4
    const/4 v0, 0x1

    .line 525
    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 527
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 466
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "requestSwap"

    .line 469
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10000000

    .line 471
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method

.method public removeCurrentPeerFromActive()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->activePeers:Ljava/util/Set;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

    .line 218
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public selectPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService;->appsToSwap:Ljava/util/Set;

    .line 280
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->persistAppsToSwap()V

    return-void
.end method

.method public stopPollingConnectedSwapRepo()V
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->pollConnectedSwapRepoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lorg/fdroid/fdroid/nearby/SwapService;->pollConnectedSwapRepoTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public swapWith(Lorg/fdroid/fdroid/nearby/peers/Peer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService;->peer:Lorg/fdroid/fdroid/nearby/peers/Peer;

    return-void
.end method
