.class Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;
.super Landroid/os/HandlerThread;
.source "LocalHTTPDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->start(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;Z)V
    .locals 0

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$useHttps:Z

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 9

    const-string v0, "android.intent.extra.TEXT"

    const-string v1, "LocalHTTPDError"

    .line 53
    new-instance v8, Lorg/fdroid/fdroid/nearby/LocalHTTPD;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$context:Landroid/content/Context;

    sget-object v4, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    sget v5, Lorg/fdroid/fdroid/FDroidApp;->port:I

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$context:Landroid/content/Context;

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iget-boolean v7, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$useHttps:Z

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/fdroid/fdroid/nearby/LocalHTTPD;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/io/File;Z)V

    invoke-static {v8}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->-$$Nest$sfputlocalHttpd(Lorg/fdroid/fdroid/nearby/LocalHTTPD;)V

    .line 60
    :try_start_0
    invoke-static {}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->-$$Nest$sfgetlocalHttpd()Lorg/fdroid/fdroid/nearby/LocalHTTPD;

    move-result-object v2

    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD;->start()V

    .line 61
    new-instance v2, Landroid/content/Intent;

    const-string v3, "LocalHTTPDStarted"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$context:Landroid/content/Context;

    .line 62
    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    .line 72
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$context:Landroid/content/Context;

    .line 75
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2

    :goto_1
    const/4 v3, 0x1

    .line 64
    sput-boolean v3, Lorg/fdroid/fdroid/FDroidApp;->generateNewPort:Z

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    .line 65
    invoke-static {v3, v4}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 66
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "port "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/fdroid/fdroid/FDroidApp;->port:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " occupied, trying new port: ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$1;->val$context:Landroid/content/Context;

    .line 70
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_2
    return-void
.end method
