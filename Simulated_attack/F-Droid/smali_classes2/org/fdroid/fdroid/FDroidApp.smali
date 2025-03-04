.class public Lorg/fdroid/fdroid/FDroidApp;
.super Landroid/app/Application;
.source "FDroidApp.java"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# static fields
.field private static final ACRA_ID:Ljava/lang/String; = "org.fdroid.fdroid:acra"

.field private static final BOUNCYCASTLE_PROVIDER:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

.field public static final SYSTEM_DIR_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FDroidApp"

.field public static final UNSET_SUBNET_INFO:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

.field public static volatile bssid:Ljava/lang/String;

.field public static volatile generateNewPort:Z

.field private static instance:Lorg/fdroid/fdroid/FDroidApp;

.field public static volatile ipAddressString:Ljava/lang/String;

.field public static volatile networkState:I

.field public static volatile port:I

.field public static volatile queryString:Ljava/lang/String;

.field public static volatile repo:Lorg/fdroid/database/Repository;

.field private static repoManager:Lorg/fdroid/index/RepoManager;

.field private static repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

.field public static volatile sessionInstallManager:Lorg/fdroid/fdroid/installer/SessionInstallManager;

.field public static volatile ssid:Ljava/lang/String;

.field public static volatile subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;


# instance fields
.field private notificationHelper:Lorg/fdroid/fdroid/NotificationHelper;


# direct methods
.method public static synthetic $r8$lambda$4gGFjden3Wa7uzJiqU2-N0wuof8(Lorg/fdroid/database/FDroidDatabase;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->lambda$onLanguageChanged$1(Lorg/fdroid/database/FDroidDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A0c9uqLmubBArhf1SKWP_AmKHlc(Lorg/fdroid/fdroid/FDroidApp;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/FDroidApp;->lambda$onCreate$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JUmbo73SNjCnwxxGmushIAFkStA(Lorg/fdroid/fdroid/FDroidApp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->lambda$onCreate$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$MtXOC5phG29nZ2AfiF16wZ6WGjI(Lorg/fdroid/fdroid/FDroidApp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$NRsNqG2x9DO4u0QURywnts2cMsM(Lorg/fdroid/fdroid/FDroidApp;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->lambda$onCreate$4()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nnMA2EjfmM6MQRPHM2tDXxv82pc(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->lambda$static$0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xVhof4v0XVG6NG-sh5XRD-1It4Q(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/FDroidApp;->lambda$getRepoManager$6(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 104
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->SYSTEM_DIR_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    .line 125
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils;

    const-string v1, "0.0.0.0/32"

    invoke-direct {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->UNSET_SUBNET_INFO:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 141
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->BOUNCYCASTLE_PROVIDER:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 142
    invoke-static {}, Lorg/fdroid/fdroid/FDroidApp;->enableBouncyCastle()V

    .line 144
    new-instance v0, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static applyTheme()V
    .locals 3

    .line 175
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getTheme()Lorg/fdroid/fdroid/Preferences$Theme;

    move-result-object v0

    .line 176
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp$1;->$SwitchMap$org$fdroid$fdroid$Preferences$Theme:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 187
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 189
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :goto_0
    return-void
.end method

.method public static checkStartTor(Landroid/content/Context;Lorg/fdroid/fdroid/Preferences;)V
    .locals 0

    .line 531
    invoke-virtual {p1}, Lorg/fdroid/fdroid/Preferences;->isTorEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 532
    invoke-static {p0}, Linfo/guardianproject/netcipher/proxy/OrbotHelper;->requestStartTor(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method private clearImageLoaderMemoryCache()V
    .locals 1

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public static configureProxy(Lorg/fdroid/fdroid/Preferences;)V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->isTorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Linfo/guardianproject/netcipher/NetCipher;->useTor()V

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->isProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fdroid/fdroid/Preferences;->getProxyPort()I

    move-result p0

    .line 522
    invoke-static {v0, p0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p0

    .line 524
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v1, p0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Linfo/guardianproject/netcipher/NetCipher;->setProxy(Ljava/net/Proxy;)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-static {}, Linfo/guardianproject/netcipher/NetCipher;->clearProxy()V

    :goto_0
    return-void
.end method

.method public static createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;
    .locals 13

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    if-nez p1, :cond_0

    const-string p1, "d0ef"

    :cond_0
    move-object v7, p1

    .line 539
    new-instance p1, Lorg/fdroid/database/Repository;

    const-wide/16 v1, 0x2a

    sget-object v6, Lorg/fdroid/index/IndexFormatVersion;->ONE:Lorg/fdroid/index/IndexFormatVersion;

    const-wide/16 v8, 0x4e21

    const/16 v10, 0x2a

    move-object v0, p1

    move-object v3, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v12}, Lorg/fdroid/database/Repository;-><init>(JLjava/lang/String;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;JIJ)V

    return-object p1
.end method

.method private static enableBouncyCastle()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "BC"

    .line 210
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->BOUNCYCASTLE_PROVIDER:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 212
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method private getAtStartTimeSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "at-start-time"

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->instance:Lorg/fdroid/fdroid/FDroidApp;

    return-object v0
.end method

.method public static getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;
    .locals 7

    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->repoManager:Lorg/fdroid/index/RepoManager;

    if-nez v0, :cond_0

    .line 549
    new-instance v6, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda1;-><init>()V

    .line 553
    new-instance v0, Lorg/fdroid/index/RepoManager;

    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v3

    sget-object v4, Lorg/fdroid/fdroid/net/DownloaderFactory;->INSTANCE:Lorg/fdroid/fdroid/net/DownloaderFactory;

    sget-object v5, Lorg/fdroid/fdroid/net/DownloaderFactory;->HTTP_MANAGER:Lorg/fdroid/download/HttpManager;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/index/RepoManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;)V

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->repoManager:Lorg/fdroid/index/RepoManager;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/FDroidApp;->repoManager:Lorg/fdroid/index/RepoManager;

    return-object p0
.end method

.method public static getRepoUpdateManager(Landroid/content/Context;)Lorg/fdroid/fdroid/RepoUpdateManager;
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Lorg/fdroid/fdroid/RepoUpdateManager;

    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v1

    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/fdroid/fdroid/RepoUpdateManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/index/RepoManager;)V

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/FDroidApp;->repoUpdateManager:Lorg/fdroid/fdroid/RepoUpdateManager;

    return-object p0
.end method

.method public static initWifiSettings()V
    .locals 2

    sget-boolean v0, Lorg/fdroid/fdroid/FDroidApp;->generateNewPort:Z

    const/16 v1, 0x22b8

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x400

    sput v0, Lorg/fdroid/fdroid/FDroidApp;->port:I

    const/4 v0, 0x0

    sput-boolean v0, Lorg/fdroid/fdroid/FDroidApp;->generateNewPort:Z

    goto :goto_0

    :cond_0
    sput v1, Lorg/fdroid/fdroid/FDroidApp;->port:I

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->UNSET_SUBNET_INFO:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    sput-object v1, Lorg/fdroid/fdroid/FDroidApp;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    const-string v1, ""

    sput-object v1, Lorg/fdroid/fdroid/FDroidApp;->ssid:Ljava/lang/String;

    sput-object v1, Lorg/fdroid/fdroid/FDroidApp;->bssid:Ljava/lang/String;

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    return-void
.end method

.method private isAcraProcess()Z
    .locals 5

    const-class v0, Landroid/app/ActivityManager;

    .line 444
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 445
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 450
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 452
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_1

    const-string v4, "org.fdroid.fdroid:acra"

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private static synthetic lambda$getRepoManager$6(Lorg/fdroid/database/Repository;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 550
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getRepoAddress(Lorg/fdroid/database/Repository;)Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/Utils;->getUri(Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreate$2()V
    .locals 1

    .line 353
    invoke-static {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V

    return-void
.end method

.method private synthetic lambda$onCreate$3()V
    .locals 2

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$4()Ljava/lang/Boolean;
    .locals 1

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/data/DBHelper;->resetTransient(Landroid/content/Context;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private synthetic lambda$onCreate$5(Ljava/lang/Boolean;)V
    .locals 0

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->updateNow(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onLanguageChanged$1(Lorg/fdroid/database/FDroidDatabase;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    .line 262
    invoke-interface {p0, v2}, Lorg/fdroid/database/FDroidDatabase;->afterLocalesChanged(Landroidx/core/os/LocaleListCompat;)V

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating DB locales took: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FDroidApp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 145
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/UndeliverableException;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 148
    :cond_0
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static onLanguageChanged(Landroid/content/Context;)V
    .locals 1

    .line 258
    invoke-static {p0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p0

    .line 259
    new-instance v0, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda6;-><init>(Lorg/fdroid/database/FDroidDatabase;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 265
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Single;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private updateLanguagesIfNecessary()V
    .locals 6

    .line 246
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->getAtStartTimeSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lastLocale"

    .line 248
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/os/LocaleListCompat;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locales changed. Old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " New: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FDroidApp"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/fdroid/fdroid/FDroidApp;->onLanguageChanged(Landroid/content/Context;)V

    .line 254
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 168
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isPureBlack()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$style;->Theme_App_Black:I

    .line 170
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 3

    .line 583
    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1000

    .line 584
    invoke-virtual {v0, v1, v2}, Landroidx/work/Configuration$Builder;->setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 585
    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    invoke-static {p0}, Lorg/fdroid/fdroid/Languages;->setLanguage(Landroid/content/ContextWrapper;)V

    const/4 p1, 0x0

    .line 240
    sput-object p1, Lorg/fdroid/fdroid/data/App;->systemLocaleList:Landroidx/core/os/LocaleListCompat;

    .line 241
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->updateLanguagesIfNecessary()V

    return-void
.end method

.method public onCreate()V
    .locals 10

    .line 288
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lorg/fdroid/fdroid/FDroidApp;->instance:Lorg/fdroid/fdroid/FDroidApp;

    .line 300
    invoke-static {p0}, Lorg/fdroid/fdroid/Preferences;->setup(Landroid/content/Context;)V

    .line 301
    invoke-static {p0}, Lorg/fdroid/fdroid/Languages;->setLanguage(Landroid/content/ContextWrapper;)V

    .line 302
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->promptToSendCrashReports()Z

    move-result v1

    const/16 v2, 0xb

    if-eqz v1, :cond_1

    .line 305
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "org.fdroid.fdroid"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "1.21.1"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "%s %s: Crash Report"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v4, Lorg/acra/config/CoreConfigurationBuilder;

    invoke-direct {v4}, Lorg/acra/config/CoreConfigurationBuilder;-><init>()V

    const/16 v5, 0xd

    new-array v5, v5, [Lorg/acra/ReportField;

    sget-object v8, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    aput-object v8, v5, v6

    sget-object v8, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v8, v5, v7

    sget-object v8, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v8, v5, v3

    const/4 v8, 0x3

    sget-object v9, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    const/4 v8, 0x4

    sget-object v9, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    const/4 v8, 0x5

    sget-object v9, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    const/4 v8, 0x6

    sget-object v9, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    const/4 v8, 0x7

    sget-object v9, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    const/16 v8, 0x8

    sget-object v9, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    const/16 v8, 0x9

    sget-object v9, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    const/16 v8, 0xa

    sget-object v9, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    sget-object v8, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    aput-object v8, v5, v2

    const/16 v8, 0xc

    sget-object v9, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    aput-object v9, v5, v8

    .line 310
    invoke-virtual {v4, v5}, Lorg/acra/config/CoreConfigurationBuilder;->withReportContent([Lorg/acra/ReportField;)Lorg/acra/config/CoreConfigurationBuilder;

    move-result-object v4

    new-array v3, v3, [Lorg/acra/config/Configuration;

    new-instance v5, Lorg/acra/config/MailSenderConfigurationBuilder;

    invoke-direct {v5}, Lorg/acra/config/MailSenderConfigurationBuilder;-><init>()V

    const-string v8, "reports@f-droid.org"

    .line 327
    invoke-virtual {v5, v8}, Lorg/acra/config/MailSenderConfigurationBuilder;->withMailTo(Ljava/lang/String;)Lorg/acra/config/MailSenderConfigurationBuilder;

    move-result-object v5

    const-string v8, "ACRA-report.stacktrace.json"

    .line 328
    invoke-virtual {v5, v8}, Lorg/acra/config/MailSenderConfigurationBuilder;->withReportFileName(Ljava/lang/String;)Lorg/acra/config/MailSenderConfigurationBuilder;

    move-result-object v5

    .line 329
    invoke-virtual {v5, v1}, Lorg/acra/config/MailSenderConfigurationBuilder;->withSubject(Ljava/lang/String;)Lorg/acra/config/MailSenderConfigurationBuilder;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Lorg/acra/config/MailSenderConfigurationBuilder;->build()Lorg/acra/config/MailSenderConfiguration;

    move-result-object v1

    aput-object v1, v3, v6

    new-instance v1, Lorg/acra/config/DialogConfigurationBuilder;

    invoke-direct {v1}, Lorg/acra/config/DialogConfigurationBuilder;-><init>()V

    sget v5, Lorg/fdroid/fdroid/R$style;->Theme_App:I

    .line 332
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/acra/config/DialogConfigurationBuilder;->withResTheme(Ljava/lang/Integer;)Lorg/acra/config/DialogConfigurationBuilder;

    move-result-object v1

    sget v5, Lorg/fdroid/fdroid/R$string;->crash_dialog_title:I

    .line 333
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/acra/config/DialogConfigurationBuilder;->withTitle(Ljava/lang/String;)Lorg/acra/config/DialogConfigurationBuilder;

    move-result-object v1

    sget v5, Lorg/fdroid/fdroid/R$string;->crash_dialog_text:I

    .line 334
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/acra/config/DialogConfigurationBuilder;->withText(Ljava/lang/String;)Lorg/acra/config/DialogConfigurationBuilder;

    move-result-object v1

    sget v5, Lorg/fdroid/fdroid/R$string;->crash_dialog_comment_prompt:I

    .line 335
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/acra/config/DialogConfigurationBuilder;->withCommentPrompt(Ljava/lang/String;)Lorg/acra/config/DialogConfigurationBuilder;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lorg/acra/config/DialogConfigurationBuilder;->build()Lorg/acra/config/DialogConfiguration;

    move-result-object v1

    aput-object v1, v3, v7

    .line 325
    invoke-virtual {v4, v3}, Lorg/acra/config/CoreConfigurationBuilder;->withPluginConfigurations([Lorg/acra/config/Configuration;)Lorg/acra/config/CoreConfigurationBuilder;

    move-result-object v1

    .line 309
    invoke-static {p0, v1}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 339
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->isAcraProcess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/fdroid/fdroid/panic/HidingManager;->isHidden(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    .line 345
    :cond_1
    new-instance v1, Lorg/fdroid/fdroid/receiver/DeviceStorageReceiver;

    invoke-direct {v1}, Lorg/fdroid/fdroid/receiver/DeviceStorageReceiver;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->registerReceiver(Landroid/content/Context;)V

    .line 348
    invoke-static {}, Lorg/fdroid/fdroid/FDroidApp;->applyTheme()V

    .line 350
    invoke-static {v0}, Lorg/fdroid/fdroid/FDroidApp;->configureProxy(Lorg/fdroid/fdroid/Preferences;)V

    .line 352
    new-instance v1, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/FDroidApp;)V

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/Preferences;->registerUnstableUpdatesChangeListener(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    .line 355
    invoke-static {p0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->schedule(Landroid/content/Context;)V

    .line 357
    new-instance v1, Lorg/fdroid/fdroid/installer/SessionInstallManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/fdroid/fdroid/installer/SessionInstallManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/fdroid/fdroid/FDroidApp;->sessionInstallManager:Lorg/fdroid/fdroid/installer/SessionInstallManager;

    .line 358
    new-instance v1, Lorg/fdroid/fdroid/NotificationHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/fdroid/fdroid/NotificationHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/FDroidApp;->notificationHelper:Lorg/fdroid/fdroid/NotificationHelper;

    .line 360
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isIndexNeverUpdated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/Preferences;->setDefaultForDataOnlyConnection(Landroid/content/Context;)V

    .line 364
    :cond_2
    invoke-static {p0}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->getNetworkState(Landroid/content/Context;)I

    move-result v1

    sput v1, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    .line 365
    invoke-static {p0}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->registerAndStart(Landroid/content/Context;)V

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->scheduleOrCancel(Landroid/content/Context;)V

    .line 368
    invoke-static {}, Lorg/fdroid/fdroid/FDroidApp;->initWifiSettings()V

    const/4 v1, 0x0

    .line 369
    invoke-static {p0, v1}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 371
    new-instance v3, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/FDroidApp;)V

    invoke-virtual {v0, v3}, Lorg/fdroid/fdroid/Preferences;->registerLocalRepoHttpsListeners(Lorg/fdroid/fdroid/Preferences$ChangeListener;)V

    .line 374
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isKeepingInstallHistory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/InstallHistoryService;->register(Landroid/content/Context;)V

    :cond_3
    sget v3, Lorg/fdroid/fdroid/R$string;->install_history_reader_packageName:I

    .line 378
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$string;->install_history_reader_packageName_UNSET:I

    .line 379
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x43

    .line 384
    sget-object v5, Lorg/fdroid/fdroid/installer/InstallHistoryService;->LOG_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v5, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 388
    :cond_4
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->getAtStartTimeSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "build-version"

    .line 389
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v4, v6, :cond_5

    .line 390
    new-instance v6, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/FDroidApp;)V

    new-instance v7, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lorg/fdroid/fdroid/FDroidApp$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/FDroidApp;)V

    invoke-static {v6, v7}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 395
    :cond_5
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isIndexNeverUpdated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 399
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->updateLanguagesIfNecessary()V

    .line 403
    :cond_6
    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->sendVersionAndUUIDToServers()Z

    move-result v0

    const-string v4, "http-downloader-query-string"

    if-eqz v0, :cond_8

    .line 404
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->queryString:Ljava/lang/String;

    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->queryString:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 406
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/16 v1, 0x10

    .line 407
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 408
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 409
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 410
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {p0}, Lorg/fdroid/fdroid/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "&client_version="

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/FDroidApp;->queryString:Ljava/lang/String;

    .line 418
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->queryString:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 421
    :cond_8
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    :cond_9
    :goto_0
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isScanRemovableStorageEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 425
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SDCardScannerService;->scan(Landroid/content/Context;)V

    :cond_a
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 278
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 279
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->clearImageLoaderMemoryCache()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 270
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 272
    invoke-direct {p0}, Lorg/fdroid/fdroid/FDroidApp;->clearImageLoaderMemoryCache()V

    :cond_0
    return-void
.end method

.method public sendViaBluetooth(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 474
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 475
    invoke-virtual {v1, p3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 476
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v3, "application/zip"

    .line 479
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    .line 480
    invoke-static {p0, p3}, Lorg/fdroid/fdroid/installer/ApkFileProvider;->getSafeUri(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 484
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    :cond_1
    :try_start_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 485
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.bluetooth"

    .line 486
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.mediatek.bluetooth"

    .line 487
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    :catch_1
    move-exception p3

    goto :goto_2

    .line 488
    :cond_2
    :goto_0
    iget-object p3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_2
    move-exception p3

    move-object v1, v0

    goto :goto_1

    :catch_3
    move-exception p3

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception p3

    move-object v1, v0

    move-object v2, v1

    goto :goto_1

    :catch_5
    move-exception p3

    move-object v1, v0

    move-object v2, v1

    goto :goto_2

    .line 496
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error preparing file to send via Bluetooth"

    invoke-direct {v3, v4, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object p3

    invoke-interface {p3, v3, p2}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Z)V

    goto :goto_3

    :goto_2
    const-string v3, "FDroidApp"

    const-string v4, "Could not get application info to send via bluetooth"

    .line 493
    invoke-static {v3, v4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 502
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_4
    sget p3, Lorg/fdroid/fdroid/R$string;->bluetooth_activity_not_found:I

    .line 505
    invoke-static {p0, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 506
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    sget p2, Lorg/fdroid/fdroid/R$string;->choose_bt_send:I

    .line 507
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 196
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->preventScreenshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method
