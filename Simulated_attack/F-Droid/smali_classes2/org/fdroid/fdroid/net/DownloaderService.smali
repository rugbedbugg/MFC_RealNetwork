.class public Lorg/fdroid/fdroid/net/DownloaderService;
.super Landroidx/core/app/JobIntentService;
.source "DownloaderService.java"


# static fields
.field public static final ACTION_COMPLETE:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.action.COMPLETE"

.field public static final ACTION_CONNECTION_FAILED:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.action.CONNECTION_FAILED"

.field public static final ACTION_INTERRUPTED:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.action.INTERRUPTED"

.field public static final ACTION_PROGRESS:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.action.PROGRESS"

.field private static final ACTION_QUEUE:Ljava/lang/String; = "org.fdroid.fdroid.net.DownloaderService.action.QUEUE"

.field public static final ACTION_STARTED:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.action.STARTED"

.field public static final EXTRA_BYTES_READ:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.extra.BYTES_READ"

.field public static final EXTRA_CANONICAL_URL:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

.field public static final EXTRA_DOWNLOAD_PATH:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.extra.DOWNLOAD_PATH"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.extra.ERROR_MESSAGE"

.field private static final EXTRA_MIRROR_URL:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.extra.MIRROR_URL"

.field private static final EXTRA_REPO_ID:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.extra.REPO_ID"

.field public static final EXTRA_TOTAL_BYTES:Ljava/lang/String; = "org.fdroid.fdroid.net.Downloader.extra.TOTAL_BYTES"

.field private static final JOB_ID:I = 0x7510b5a0

.field private static final TAG:Ljava/lang/String; = "DownloaderService"

.field private static volatile activeCanonicalUrl:Ljava/lang/String;

.field private static volatile downloader:Lorg/fdroid/download/Downloader;


# instance fields
.field private installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method public static synthetic $r8$lambda$3F6q1K1NPdZex_ryK4FaV6PCZqk(Lorg/fdroid/fdroid/net/DownloaderService;[JLandroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/fdroid/fdroid/net/DownloaderService;->lambda$handleIntent$0([JLandroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static cancel(Ljava/lang/String;)V
    .locals 3

    .line 324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling download of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " downloading from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloaderService"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 330
    invoke-static {p0}, Lorg/fdroid/fdroid/net/DownloaderService;->isActive(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    .line 331
    invoke-virtual {p0}, Lorg/fdroid/download/Downloader;->cancelDownload()V

    goto :goto_0

    .line 333
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_CANCEL called on something not queued or running (expected to find message with ID of "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in queue)."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 3

    .line 351
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.fdroid.fdroid.net.Downloader.action.STARTED"

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.net.Downloader.action.PROGRESS"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.net.Downloader.action.COMPLETE"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.net.Downloader.action.INTERRUPTED"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.net.Downloader.action.CONNECTION_FAILED"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-string v8, "/fdroid/repo"

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/fdroid/fdroid/data/App;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/fdroid/fdroid/data/Apk;

    .line 188
    iget-wide v1, v12, Lorg/fdroid/fdroid/data/Apk;->repoId:J

    const-string v3, "org.fdroid.fdroid.net.Downloader.extra.REPO_ID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v1, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {v12}, Lorg/fdroid/fdroid/data/Apk;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 191
    iget-object v15, v12, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    .line 192
    invoke-static {v9, v10}, Lorg/fdroid/fdroid/installer/ApkCache;->getApkDownloadPath(Landroid/content/Context;Landroid/net/Uri;)Lorg/fdroid/fdroid/data/SanitizedFile;

    move-result-object v7

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queued download of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DownloaderService"

    invoke-static {v5, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "org.fdroid.fdroid.net.Downloader.action.STARTED"

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v7

    move-object/from16 v16, v5

    move-wide v5, v13

    move-object/from16 v17, v12

    move-object v12, v7

    move-object v7, v10

    .line 197
    invoke-direct/range {v1 .. v7}, Lorg/fdroid/fdroid/net/DownloaderService;->sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;JLandroid/net/Uri;)V

    iget-object v1, v9, Lorg/fdroid/fdroid/net/DownloaderService;->installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

    .line 198
    invoke-virtual {v1, v10}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadStarted(Landroid/net/Uri;)V

    const/4 v7, 0x0

    .line 201
    :try_start_0
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/fdroid/fdroid/net/DownloaderService;->activeCanonicalUrl:Ljava/lang/String;

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    invoke-static {v1}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object v1

    if-nez v1, :cond_3

    .line 205
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v10}, Landroid/net/Uri;->getPort()I

    move-result v2

    const/16 v3, 0x3ff

    if-le v2, v3, :cond_1

    const-string v2, "http"

    .line 207
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1, v7}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/net/ssl/SSLKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v15, v7

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :goto_0
    move-object v15, v7

    :goto_1
    move-object/from16 v2, v16

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_0

    :catch_7
    move-exception v0

    goto :goto_0

    :catch_8
    move-exception v0

    goto :goto_0

    :catch_9
    move-exception v0

    goto :goto_0

    :catch_a
    move-exception v0

    goto :goto_0

    :catch_b
    move-exception v0

    goto :goto_0

    :catch_c
    move-object v15, v7

    goto/16 :goto_6

    :cond_1
    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    .line 250
    invoke-virtual {v0}, Lorg/fdroid/download/Downloader;->close()V

    :cond_2
    return-void

    .line 213
    :cond_3
    :goto_2
    :try_start_1
    sget-object v2, Lorg/fdroid/fdroid/net/DownloaderFactory;->INSTANCE:Lorg/fdroid/fdroid/net/DownloaderFactory;

    invoke-virtual {v2, v1, v0, v15, v12}, Lorg/fdroid/fdroid/net/DownloaderFactory;->create(Lorg/fdroid/database/Repository;Landroid/net/Uri;Lorg/fdroid/IndexFile;Ljava/io/File;)Lorg/fdroid/download/Downloader;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    const/4 v0, 0x1

    new-array v3, v0, [J

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v3, v0

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    .line 215
    new-instance v8, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lorg/fdroid/fdroid/net/DownloaderService$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/net/DownloaderService;[JLandroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    invoke-virtual {v0, v8}, Lorg/fdroid/download/Downloader;->setListener(Lorg/fdroid/fdroid/ProgressListener;)V

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    .line 228
    invoke-virtual {v0}, Lorg/fdroid/download/Downloader;->download()V

    const-string v3, "org.fdroid.fdroid.net.Downloader.action.COMPLETE"
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/net/ssl/SSLKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v12

    move-wide v5, v13

    move-object v15, v7

    move-object v7, v10

    .line 229
    :try_start_2
    invoke-direct/range {v1 .. v7}, Lorg/fdroid/fdroid/net/DownloaderService;->sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;JLandroid/net/Uri;)V

    iget-object v0, v9, Lorg/fdroid/fdroid/net/DownloaderService;->installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

    move-object/from16 v1, v17

    .line 230
    invoke-virtual {v0, v10, v12, v11, v1}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadComplete(Landroid/net/Uri;Ljava/io/File;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/net/HttpRetryException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljavax/net/ssl/SSLKeyException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lorg/fdroid/download/NotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    if-eqz v0, :cond_4

    :goto_3
    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    .line 250
    invoke-virtual {v0}, Lorg/fdroid/download/Downloader;->close()V

    goto/16 :goto_7

    :catch_d
    move-exception v0

    goto :goto_4

    :catch_e
    move-exception v0

    goto :goto_1

    :catch_f
    move-exception v0

    goto :goto_1

    :catch_10
    move-exception v0

    goto :goto_1

    :catch_11
    move-exception v0

    goto :goto_1

    :catch_12
    move-exception v0

    goto :goto_1

    :catch_13
    move-exception v0

    goto :goto_1

    :catch_14
    move-exception v0

    goto :goto_1

    :catch_15
    move-exception v0

    goto :goto_1

    :catch_16
    move-exception v0

    goto :goto_1

    :catch_17
    move-exception v0

    goto :goto_1

    :catch_18
    move-exception v0

    goto/16 :goto_1

    :goto_4
    :try_start_3
    const-string v1, "Error downloading: "

    move-object/from16 v2, v16

    .line 244
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "org.fdroid.fdroid.net.Downloader.action.INTERRUPTED"

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v12

    move-wide v6, v13

    move-object v8, v10

    .line 245
    invoke-direct/range {v1 .. v8}, Lorg/fdroid/fdroid/net/DownloaderService;->sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLandroid/net/Uri;)V

    iget-object v1, v9, Lorg/fdroid/fdroid/net/DownloaderService;->installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadFailed(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 240
    :goto_5
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_FAILED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "org.fdroid.fdroid.net.Downloader.action.CONNECTION_FAILED"

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v12

    move-wide v5, v13

    move-object v7, v10

    .line 241
    invoke-direct/range {v1 .. v7}, Lorg/fdroid/fdroid/net/DownloaderService;->sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;JLandroid/net/Uri;)V

    iget-object v1, v9, Lorg/fdroid/fdroid/net/DownloaderService;->installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadFailed(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    if-eqz v0, :cond_4

    goto :goto_3

    :catch_19
    :goto_6
    :try_start_5
    const-string v3, "org.fdroid.fdroid.net.Downloader.action.INTERRUPTED"

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v12

    move-wide v5, v13

    move-object v7, v10

    .line 232
    invoke-direct/range {v1 .. v7}, Lorg/fdroid/fdroid/net/DownloaderService;->sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;JLandroid/net/Uri;)V

    iget-object v0, v9, Lorg/fdroid/fdroid/net/DownloaderService;->installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

    .line 233
    invoke-virtual {v0, v10, v15}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadFailed(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    :goto_7
    sput-object v15, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    sput-object v15, Lorg/fdroid/fdroid/net/DownloaderService;->activeCanonicalUrl:Ljava/lang/String;

    return-void

    :goto_8
    sget-object v1, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    if-eqz v1, :cond_5

    sget-object v1, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    .line 250
    invoke-virtual {v1}, Lorg/fdroid/download/Downloader;->close()V

    .line 252
    :cond_5
    throw v0
.end method

.method private static isActive(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->downloader:Lorg/fdroid/download/Downloader;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->activeCanonicalUrl:Ljava/lang/String;

    .line 342
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleIntent$0([JLandroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;JJ)V
    .locals 11

    move-object v0, p0

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 219
    aget-wide v4, p1, v3

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    return-void

    .line 220
    :cond_0
    aput-wide v1, p1, v3

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.fdroid.fdroid.net.Downloader.action.PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p2

    .line 222
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "org.fdroid.fdroid.net.Downloader.extra.BYTES_READ"

    move-wide/from16 v7, p5

    .line 223
    invoke-virtual {v1, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "org.fdroid.fdroid.net.Downloader.extra.TOTAL_BYTES"

    move-wide/from16 v9, p7

    .line 224
    invoke-virtual {v1, v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, v0, Lorg/fdroid/fdroid/net/DownloaderService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 225
    invoke-virtual {v3, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v3, v0, Lorg/fdroid/fdroid/net/DownloaderService;->installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 226
    invoke-virtual/range {v3 .. v10}, Lorg/fdroid/fdroid/installer/InstallManagerService;->onDownloadProgress(Landroid/net/Uri;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;JJ)V

    return-void
.end method

.method public static queue(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 290
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queue download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloaderService"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/net/DownloaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "org.fdroid.fdroid.net.DownloaderService.action.QUEUE"

    .line 295
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p3, "org.fdroid.fdroid.net.Downloader.extra.REPO_ID"

    .line 297
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 298
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p1, Lorg/fdroid/fdroid/net/DownloaderService;->JOB_ID:I

    .line 299
    invoke-static {p0, v1, p1, v0}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method public static queue(Landroid/content/Context;Ljava/lang/String;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 3

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lorg/fdroid/fdroid/data/Apk;->apkFile:Lorg/fdroid/index/v2/FileV1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queue download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloaderService"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/net/DownloaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "org.fdroid.fdroid.net.DownloaderService.action.QUEUE"

    .line 308
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    .line 310
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 311
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget p1, Lorg/fdroid/fdroid/net/DownloaderService;->JOB_ID:I

    .line 312
    invoke-static {p0, v1, p1, v0}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;JLandroid/net/Uri;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    move-object v7, p6

    .line 258
    invoke-direct/range {v0 .. v7}, Lorg/fdroid/fdroid/net/DownloaderService;->sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLandroid/net/Uri;)V

    return-void
.end method

.method private sendBroadcast(Landroid/net/Uri;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLandroid/net/Uri;)V
    .locals 1

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p7, :cond_0

    .line 265
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "org.fdroid.fdroid.net.Downloader.extra.DOWNLOAD_PATH"

    .line 268
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "org.fdroid.fdroid.net.Downloader.extra.ERROR_MESSAGE"

    .line 271
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p2, "org.fdroid.fdroid.net.Downloader.extra.REPO_ID"

    .line 273
    invoke-virtual {v0, p2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "org.fdroid.fdroid.net.Downloader.extra.MIRROR_URL"

    .line 274
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/net/DownloaderService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 275
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    const-string v0, "DownloaderService"

    const-string v1, "Creating downloader service."

    .line 129
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/installer/InstallManagerService;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/net/DownloaderService;->installManagerService:Lorg/fdroid/fdroid/installer/InstallManagerService;

    .line 131
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/net/DownloaderService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DownloaderService"

    const-string v1, "Destroying downloader service."

    .line 159
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Intent for downloading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloaderService"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Intent with no URI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "org.fdroid.fdroid.net.DownloaderService.action.QUEUE"

    .line 143
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/net/DownloaderService;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Intent with unknown action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStopCurrentWork()Z
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopCurrentWork - activeCanonicalUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/fdroid/fdroid/net/DownloaderService;->activeCanonicalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloaderService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/fdroid/fdroid/net/DownloaderService;->activeCanonicalUrl:Ljava/lang/String;

    .line 153
    invoke-static {v0}, Lorg/fdroid/fdroid/net/DownloaderService;->cancel(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
