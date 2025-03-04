.class public Lorg/fdroid/fdroid/net/ConnectivityMonitorService;
.super Landroidx/core/app/JobIntentService;
.source "ConnectivityMonitorService.java"


# static fields
.field private static final ACTION_START:Ljava/lang/String; = "org.fdroid.fdroid.net.action.CONNECTIVITY_MONITOR"

.field private static final CONNECTIVITY_RECEIVER:Landroid/content/BroadcastReceiver;

.field public static final FLAG_NET_DEVICE_AP_WITHOUT_INTERNET:I = 0x3

.field public static final FLAG_NET_METERED:I = 0x1

.field public static final FLAG_NET_NO_LIMIT:I = 0x2

.field public static final FLAG_NET_UNAVAILABLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ConnectivityMonitorServ"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/fdroid/fdroid/net/ConnectivityMonitorService$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->CONNECTIVITY_RECEIVER:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 7

    const-class v0, Landroid/net/ConnectivityManager;

    .line 79
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_5

    .line 85
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_5

    .line 87
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 88
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 89
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 90
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 91
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eth0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ap0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    :cond_2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 95
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_3

    instance-of v6, v5, Ljava/net/Inet6Address;

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "ConnectivityMonitorServ"

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FLAG_NET_DEVICE_AP_WITHOUT_INTERNET: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    return p0

    :catch_0
    :cond_5
    if-eqz v1, :cond_9

    .line 109
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 113
    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/16 v2, 0x9

    if-eq v0, v2, :cond_7

    return v1

    .line 117
    :cond_7
    invoke-static {p0}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x2

    return p0

    :cond_9
    :goto_1
    return v0
.end method

.method public static registerAndStart(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->CONNECTIVITY_RECEIVER:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "org.fdroid.fdroid.net.action.CONNECTIVITY_MONITOR"

    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x982ae7b

    .line 63
    invoke-static {p0, v1, v2, v0}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "org.fdroid.fdroid.net.action.CONNECTIVITY_MONITOR"

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-static {p0}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->getNetworkState(Landroid/content/Context;)I

    move-result p1

    sput p1, Lorg/fdroid/fdroid/FDroidApp;->networkState:I

    :cond_0
    return-void
.end method
