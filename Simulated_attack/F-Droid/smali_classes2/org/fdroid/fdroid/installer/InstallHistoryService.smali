.class public Lorg/fdroid/fdroid/installer/InstallHistoryService;
.super Landroidx/core/app/JobIntentService;
.source "InstallHistoryService.java"


# static fields
.field private static final JOB_ID:I = 0x630cc1dc

.field public static final LOG_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "InstallHistoryService"

.field private static broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$smqueue(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/installer/InstallHistoryService;->queue(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://org.fdroid.fdroid.installer/install_history/all"

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/installer/InstallHistoryService;->LOG_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static getInstallHistoryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "install_history"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 100
    new-instance p0, Ljava/io/File;

    const-string v1, "all"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private static queue(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallHistoryService"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lorg/fdroid/fdroid/installer/InstallHistoryService;

    .line 93
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget v1, Lorg/fdroid/fdroid/installer/InstallHistoryService;->JOB_ID:I

    .line 94
    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lorg/fdroid/fdroid/installer/InstallHistoryService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "http"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "https"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "package"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_STARTED"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_STARTED"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lorg/fdroid/fdroid/installer/InstallHistoryService$1;

    invoke-direct {v1}, Lorg/fdroid/fdroid/installer/InstallHistoryService$1;-><init>()V

    sput-object v1, Lorg/fdroid/fdroid/installer/InstallHistoryService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v1, Lorg/fdroid/fdroid/installer/InstallHistoryService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-virtual {p0, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v0, Lorg/fdroid/fdroid/installer/InstallHistoryService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-object p0, Lorg/fdroid/fdroid/installer/InstallHistoryService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 8

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallHistoryService"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x13

    .line 107
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/data/Apk;

    .line 110
    iget-object v4, v0, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 111
    iget-wide v5, v0, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/InstallHistoryService;->getInstallHistoryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x0

    .line 123
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    :try_start_1
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, ","

    .line 125
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    :goto_0
    invoke-static {v3}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v2

    .line 127
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    invoke-static {v2}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-static {v2}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v3}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    throw v0
.end method
