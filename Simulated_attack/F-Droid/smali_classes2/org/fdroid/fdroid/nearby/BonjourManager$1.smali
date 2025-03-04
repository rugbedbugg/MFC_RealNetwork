.class Lorg/fdroid/fdroid/nearby/BonjourManager$1;
.super Landroid/os/HandlerThread;
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

.field final synthetic val$httpServiceListener:Ljavax/jmdns/ServiceListener;

.field final synthetic val$httpsServiceListener:Ljavax/jmdns/ServiceListener;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;Landroid/net/wifi/WifiManager;Landroid/content/Context;)V
    .locals 0

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$httpServiceListener:Ljavax/jmdns/ServiceListener;

    iput-object p4, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$httpsServiceListener:Ljavax/jmdns/ServiceListener;

    iput-object p5, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p6, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$context:Landroid/content/Context;

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    .line 140
    :try_start_0
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfputjmdns(Ljavax/jmdns/JmDNS;)V

    .line 142
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object v0

    const-string v1, "_http._tcp.local."

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$httpServiceListener:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 143
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;

    move-result-object v0

    const-string v1, "_https._tcp.local."

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$httpsServiceListener:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;->val$context:Landroid/content/Context;

    .line 145
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfputmulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    .line 146
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetmulticastLock()Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 147
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgetmulticastLock()Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgethandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgethandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x3f5a41

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgethandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$sfgethandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x164d    # 8.0E-42f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    const-string v1, "BonjourManager"

    const-string v2, "Error while registering jmdns service"

    .line 155
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v1, 0xffff

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
