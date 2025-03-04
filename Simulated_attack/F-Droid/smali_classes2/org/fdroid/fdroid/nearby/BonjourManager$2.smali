.class Lorg/fdroid/fdroid/nearby/BonjourManager$2;
.super Landroid/os/Handler;
.source "BonjourManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/BonjourManager;->start(Landroid/content/Context;Ljava/lang/String;ZLjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localRepoName:Ljava/lang/String;

.field final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->val$localRepoName:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->val$useHttps:Z

    iput-object p4, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->val$context:Landroid/content/Context;

    .line 161
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleNotVisible()V
    .locals 3

    .line 214
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetpairService()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetpairService()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/jmdns/JmDNS;->unregisterService(Ljavax/jmdns/ServiceInfo;)V

    .line 216
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfputpairService(Ljavax/jmdns/ServiceInfo;)V

    :cond_0
    const/4 v0, 0x5

    .line 218
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private handleStop()V
    .locals 2

    .line 226
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetmulticastLock()Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetmulticastLock()Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 229
    :cond_0
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    .line 231
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfputpairService(Ljavax/jmdns/ServiceInfo;)V

    .line 233
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfputjmdns(Ljavax/jmdns/JmDNS;)V

    .line 235
    :cond_1
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgethandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 236
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfputhandlerThread(Landroid/os/HandlerThread;)V

    const/4 v0, 0x3

    .line 237
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private handleVisible(Ljava/lang/String;Z)V
    .locals 8

    .line 182
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    const v1, 0xffff

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->val$context:Landroid/content/Context;

    sget p2, Lorg/fdroid/fdroid/R$string;->swap_no_wifi_network:I

    .line 183
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void

    .line 186
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "path"

    const-string v2, "/fdroid/repo"

    .line 187
    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    .line 188
    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fingerprint"

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    if-eqz p2, :cond_1

    const-string p2, "fdroidrepos"

    .line 192
    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "_https._tcp.local."

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_1
    const-string p2, "fdroidrepo"

    .line 195
    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "_http._tcp.local."

    goto :goto_0

    .line 198
    :goto_1
    sget v4, Lorg/fdroid/fdroid/FDroidApp;->port:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object p1

    .line 199
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetpairService()Ljavax/jmdns/ServiceInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 200
    :try_start_0
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetpairService()Ljavax/jmdns/ServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 201
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object p2

    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetpairService()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/jmdns/JmDNS;->unregisterService(Ljavax/jmdns/ServiceInfo;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 203
    :cond_2
    :goto_2
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    .line 204
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfputpairService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 206
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_4
    const/4 p1, 0x4

    const/4 p2, 0x0

    .line 210
    invoke-static {p1, p2}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private handleVpnConflict()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 222
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 165
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x164d    # 8.0E-42f

    if-eq p1, v0, :cond_3

    const v0, 0x3f5a41

    if-eq p1, v0, :cond_2

    const v0, 0x44fec80

    if-eq p1, v0, :cond_1

    const v0, 0x8979541

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->handleNotVisible()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->handleVpnConflict()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->val$localRepoName:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->val$useHttps:Z

    .line 167
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->handleVisible(Ljava/lang/String;Z)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager$2;->handleStop()V

    :goto_0
    return-void
.end method
