.class public Lorg/fdroid/fdroid/nearby/BonjourManager;
.super Ljava/lang/Object;
.source "BonjourManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/BonjourManager$SwapServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_FOUND:Ljava/lang/String; = "BonjourNewPeer"

.field public static final ACTION_REMOVED:Ljava/lang/String; = "BonjourPeerRemoved"

.field public static final ACTION_STATUS:Ljava/lang/String; = "BonjourStatus"

.field public static final EXTRA_BONJOUR_PEER:Ljava/lang/String; = "extraBonjourPeer"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "BonjourStatusExtra"

.field public static final HTTPS_SERVICE_TYPE:Ljava/lang/String; = "_https._tcp.local."

.field public static final HTTP_SERVICE_TYPE:Ljava/lang/String; = "_http._tcp.local."

.field private static final NOT_VISIBLE:I = 0x8979541

.field public static final STATUS_ERROR:I = 0xffff

.field public static final STATUS_NOT_VISIBLE:I = 0x5

.field public static final STATUS_STARTED:I = 0x1

.field public static final STATUS_STARTING:I = 0x0

.field public static final STATUS_STOPPED:I = 0x3

.field public static final STATUS_STOPPING:I = 0x2

.field public static final STATUS_VISIBLE:I = 0x4

.field public static final STATUS_VPN_CONFLICT:I = 0x6

.field private static final STOP:I = 0x164d

.field private static final TAG:Ljava/lang/String; = "BonjourManager"

.field private static final VISIBLE:I = 0x3f5a41

.field private static final VPN_CONFLICT:I = 0x44fec80

.field private static context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static handler:Landroid/os/Handler;

.field private static volatile handlerThread:Landroid/os/HandlerThread;

.field private static final httpServiceListener:Ljavax/jmdns/ServiceListener;

.field private static final httpsServiceListener:Ljavax/jmdns/ServiceListener;

.field private static jmdns:Ljavax/jmdns/JmDNS;

.field private static multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private static pairService:Ljavax/jmdns/ServiceInfo;


# direct methods
.method static bridge synthetic -$$Nest$sfgethandler()Landroid/os/Handler;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgethandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetjmdns()Ljavax/jmdns/JmDNS;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->jmdns:Ljavax/jmdns/JmDNS;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmulticastLock()Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpairService()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->pairService:Ljavax/jmdns/ServiceInfo;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputhandlerThread(Landroid/os/HandlerThread;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputjmdns(Ljavax/jmdns/JmDNS;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->jmdns:Ljavax/jmdns/JmDNS;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputpairService(Ljavax/jmdns/ServiceInfo;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->pairService:Ljavax/jmdns/ServiceInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendBroadcast(ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->sendBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendBroadcast(Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->sendBroadcast(Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 288
    new-instance v0, Lorg/fdroid/fdroid/nearby/BonjourManager$SwapServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager$SwapServiceListener;-><init>(Lorg/fdroid/fdroid/nearby/BonjourManager$SwapServiceListener-IA;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->httpServiceListener:Ljavax/jmdns/ServiceListener;

    .line 289
    new-instance v0, Lorg/fdroid/fdroid/nearby/BonjourManager$SwapServiceListener;

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager$SwapServiceListener;-><init>(Lorg/fdroid/fdroid/nearby/BonjourManager$SwapServiceListener-IA;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->httpsServiceListener:Ljavax/jmdns/ServiceListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlive()Z
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVpnActive(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 314
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 315
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 316
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 320
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public static restart(Landroid/content/Context;)V
    .locals 4

    .line 245
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getLocalRepoName()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isLocalRepoHttpsEnabled()Z

    move-result v1

    sget-object v2, Lorg/fdroid/fdroid/nearby/BonjourManager;->httpServiceListener:Ljavax/jmdns/ServiceListener;

    sget-object v3, Lorg/fdroid/fdroid/nearby/BonjourManager;->httpsServiceListener:Ljavax/jmdns/ServiceListener;

    .line 244
    invoke-static {p0, v0, v1, v2, v3}, Lorg/fdroid/fdroid/nearby/BonjourManager;->restart(Landroid/content/Context;Ljava/lang/String;ZLjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;)V

    return-void
.end method

.method static restart(Landroid/content/Context;Ljava/lang/String;ZLjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;)V
    .locals 3

    .line 258
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->stop(Landroid/content/Context;)V

    :try_start_0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x2710

    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :catch_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/nearby/BonjourManager;->start(Landroid/content/Context;Ljava/lang/String;ZLjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;)V

    return-void
.end method

.method private static sendBroadcast(ILjava/lang/String;)V
    .locals 2

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "BonjourStatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BonjourStatusExtra"

    .line 281
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android.intent.extra.TEXT"

    .line 283
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->context:Ljava/lang/ref/WeakReference;

    .line 285
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private static sendBroadcast(Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    .locals 1

    .line 268
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->getInstance(Ljavax/jmdns/ServiceInfo;)Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IGNORING: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BonjourManager"

    invoke-static {p1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "extraBonjourPeer"

    .line 274
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->context:Ljava/lang/ref/WeakReference;

    .line 275
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setVisible(Landroid/content/Context;Z)V
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->context:Ljava/lang/ref/WeakReference;

    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->isVpnActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    const p1, 0x44fec80

    .line 100
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    const p1, 0x3f5a41

    .line 102
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    const p1, 0x8979541

    .line 104
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "BonjourManager"

    const-string p1, "handlerThread is stopped, not changing visibility!"

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 4

    .line 115
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getLocalRepoName()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->isLocalRepoHttpsEnabled()Z

    move-result v1

    sget-object v2, Lorg/fdroid/fdroid/nearby/BonjourManager;->httpServiceListener:Ljavax/jmdns/ServiceListener;

    sget-object v3, Lorg/fdroid/fdroid/nearby/BonjourManager;->httpsServiceListener:Ljavax/jmdns/ServiceListener;

    .line 114
    invoke-static {p0, v0, v1, v2, v3}, Lorg/fdroid/fdroid/nearby/BonjourManager;->start(Landroid/content/Context;Ljava/lang/String;ZLjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;)V

    return-void
.end method

.method static start(Landroid/content/Context;Ljava/lang/String;ZLjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;)V
    .locals 8

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->context:Ljava/lang/ref/WeakReference;

    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 130
    invoke-static {p0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->sendBroadcast(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->sendBroadcast(ILjava/lang/String;)V

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 135
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 136
    new-instance v0, Lorg/fdroid/fdroid/nearby/BonjourManager$1;

    const-string v2, "BonjourManager"

    const/4 v3, 0x1

    move-object v1, v0

    move-object v4, p3

    move-object v5, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/fdroid/nearby/BonjourManager$1;-><init>(Ljava/lang/String;ILjavax/jmdns/ServiceListener;Ljavax/jmdns/ServiceListener;Landroid/net/wifi/WifiManager;Landroid/content/Context;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    sget-object p3, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    .line 160
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 161
    new-instance p3, Lorg/fdroid/fdroid/nearby/BonjourManager$2;

    sget-object p4, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2, p0}, Lorg/fdroid/fdroid/nearby/BonjourManager$2;-><init>(Landroid/os/Looper;Ljava/lang/String;ZLandroid/content/Context;)V

    sput-object p3, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BonjourManager;->context:Ljava/lang/ref/WeakReference;

    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handlerThread:Landroid/os/HandlerThread;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 89
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->sendBroadcast(ILjava/lang/String;)V

    sget-object p0, Lorg/fdroid/fdroid/nearby/BonjourManager;->handler:Landroid/os/Handler;

    const/16 v0, 0x164d    # 8.0E-42f

    .line 90
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x3

    .line 86
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/nearby/BonjourManager;->sendBroadcast(ILjava/lang/String;)V

    return-void
.end method
