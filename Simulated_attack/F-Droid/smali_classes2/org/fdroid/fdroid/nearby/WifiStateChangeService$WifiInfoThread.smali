.class public Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;
.super Ljava/lang/Thread;
.source "WifiStateChangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/WifiStateChangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiInfoThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;


# direct methods
.method public constructor <init>(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "WifiStateChangeService"

    const/16 v1, 0x13

    .line 151
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 153
    :try_start_0
    invoke-static {}, Lorg/fdroid/fdroid/FDroidApp;->initWifiSettings()V

    const-string v1, "Checking wifi state (in background thread)."

    .line 154
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 157
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$fgetwifiManager(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    .line 159
    :cond_0
    :goto_0
    sget-object v6, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-nez v6, :cond_8

    .line 160
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    :cond_1
    if-ne v1, v7, :cond_4

    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 164
    invoke-static {v4}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$fgetwifiManager(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    invoke-static {v6}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    iget-object v6, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 166
    invoke-static {v6, v4}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$msetSsid(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;Landroid/net/wifi/WifiInfo;)V

    iget-object v6, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 167
    invoke-static {v6}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$fgetwifiManager(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 169
    iget v6, v6, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v6}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    sget-object v7, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    .line 172
    :try_start_1
    new-instance v7, Lorg/apache/commons/net/util/SubnetUtils;

    sget-object v8, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Lorg/apache/commons/net/util/SubnetUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    move-result-object v6

    sput-object v6, Lorg/fdroid/fdroid/FDroidApp;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :catch_1
    move-exception v6

    .line 175
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    :cond_2
    :goto_1
    sget-object v6, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lorg/fdroid/fdroid/FDroidApp;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    sget-object v7, Lorg/fdroid/fdroid/FDroidApp;->UNSET_SUBNET_INFO:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    if-ne v6, v7, :cond_6

    :cond_3
    iget-object v6, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 181
    invoke-static {v6}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$msetIpInfoFromNetworkInterface(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;)V

    goto :goto_2

    :cond_4
    if-eq v1, v8, :cond_5

    if-eqz v1, :cond_5

    const/4 v6, 0x4

    if-ne v1, v6, :cond_6

    :cond_5
    iget-object v6, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 187
    invoke-static {v6}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$msetIpInfoFromNetworkInterface(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;)V

    .line 188
    sget-object v6, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    if-nez v6, :cond_6

    return-void

    :cond_6
    :goto_2
    const/16 v6, 0x78

    if-le v5, v6, :cond_7

    return-void

    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 198
    sget-object v6, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    if-nez v6, :cond_0

    const-wide/16 v6, 0x3e8

    .line 199
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const-string v6, "waiting for an IP address..."

    .line 200
    invoke-static {v0, v6}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 207
    invoke-static {v1, v4}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$msetSsid(Lorg/fdroid/fdroid/nearby/WifiStateChangeService;Landroid/net/wifi/WifiInfo;)V

    .line 210
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isLocalRepoHttpsEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "https"

    goto :goto_3

    :cond_a
    const-string v1, "http"

    :goto_3
    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 215
    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 216
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%s://%s:%d/fdroid/repo"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    aput-object v1, v7, v8

    sget v1, Lorg/fdroid/fdroid/FDroidApp;->port:I

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v7, v2

    .line 216
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v4}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->get(Landroid/content/Context;)Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_4

    .line 222
    :cond_b
    invoke-static {v5}, Lorg/fdroid/fdroid/Hasher;->hex(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 223
    :goto_4
    invoke-static {v1, v3}, Lorg/fdroid/fdroid/FDroidApp;->createSwapRepo(Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object v1

    .line 225
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_c

    return-void

    .line 229
    :cond_c
    invoke-static {v4}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->get(Landroid/content/Context;)Lorg/fdroid/fdroid/nearby/LocalRepoManager;

    move-result-object v3

    .line 230
    sget-object v4, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    invoke-static {v4}, Lorg/fdroid/fdroid/Utils;->getSharingUri(Lorg/fdroid/database/Repository;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->writeIndexPage(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_d

    return-void

    .line 236
    :cond_d
    sput-object v1, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    .line 245
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isLocalRepoHttpsEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 246
    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->setupHTTPSCertificate()V
    :try_end_2
    .catch Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    const-string v1, "interrupted"

    .line 252
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    const-string v2, "Unable to configure a fingerprint or HTTPS for the local repo"

    .line 250
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :cond_e
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.action.WIFI_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifiStateChangeStatus"

    .line 256
    invoke-static {}, Lorg/fdroid/fdroid/nearby/WifiStateChangeService;->-$$Nest$sfgetwifiState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/WifiStateChangeService$WifiInfoThread;->this$0:Lorg/fdroid/fdroid/nearby/WifiStateChangeService;

    .line 257
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
