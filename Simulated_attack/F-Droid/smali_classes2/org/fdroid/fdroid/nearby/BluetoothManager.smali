.class public Lorg/fdroid/fdroid/nearby/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field public static final ACTION_FOUND:Ljava/lang/String; = "BluetoothNewPeer"

.field public static final ACTION_STATUS:Ljava/lang/String; = "BluetoothStatus"

.field public static final EXTRA_PEER:Ljava/lang/String; = "extraBluetoothPeer"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "BluetoothStatusExtra"

.field public static final STATUS_ERROR:I = 0xffff

.field public static final STATUS_STARTED:I = 0x1

.field public static final STATUS_STARTING:I = 0x0

.field public static final STATUS_STOPPED:I = 0x3

.field public static final STATUS_STOPPING:I = 0x2

.field private static final STOP:I = 0x164d

.field private static final TAG:Ljava/lang/String; = "BluetoothManager"

.field private static bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static final bluetoothDeviceFound:Landroid/content/BroadcastReceiver;

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


# direct methods
.method static bridge synthetic -$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetbluetoothDeviceFound()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->bluetoothDeviceFound:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgethandlerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputbluetoothAdapter(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputhandlerThread(Landroid/os/HandlerThread;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendBroadcast(ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->sendBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendFoundBroadcast(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->sendFoundBroadcast(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lorg/fdroid/fdroid/nearby/BluetoothManager$3;

    invoke-direct {v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager$3;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->bluetoothDeviceFound:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlive()Z
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    .line 156
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

.method public static restart(Landroid/content/Context;)V
    .locals 3

    .line 142
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->stop(Landroid/content/Context;)V

    :try_start_0
    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x2710

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->start(Landroid/content/Context;)V

    return-void
.end method

.method private static sendBroadcast(ILjava/lang/String;)V
    .locals 2

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "BluetoothStatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BluetoothStatusExtra"

    .line 162
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android.intent.extra.TEXT"

    .line 164
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->context:Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private static sendFoundBroadcast(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 177
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/peers/BluetoothPeer;->getInstance(Landroid/bluetooth/BluetoothDevice;)Lorg/fdroid/fdroid/nearby/peers/BluetoothPeer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IGNORING: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothManager"

    invoke-static {p1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "BluetoothNewPeer"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extraBluetoothPeer"

    .line 183
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 184
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 4

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 78
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->context:Ljava/lang/ref/WeakReference;

    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {v2, v1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->sendBroadcast(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 88
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->sendBroadcast(ILjava/lang/String;)V

    .line 90
    new-instance v0, Lorg/fdroid/fdroid/nearby/BluetoothServer;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/nearby/BluetoothServer;-><init>(Ljava/io/File;)V

    .line 91
    new-instance v1, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;

    const-string v3, "BluetoothManager"

    invoke-direct {v1, v3, v2, p0, v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;-><init>(Ljava/lang/String;ILandroid/content/Context;Lorg/fdroid/fdroid/nearby/BluetoothServer;)V

    sput-object v1, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    sget-object v1, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 118
    new-instance v1, Lorg/fdroid/fdroid/nearby/BluetoothManager$2;

    sget-object v2, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager$2;-><init>(Landroid/os/Looper;Landroid/content/Context;Lorg/fdroid/fdroid/nearby/BluetoothServer;)V

    sput-object v1, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->context:Ljava/lang/ref/WeakReference;

    sget-object p0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    sget-object p0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handlerThread:Landroid/os/HandlerThread;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 68
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->sendBroadcast(ILjava/lang/String;)V

    sget-object p0, Lorg/fdroid/fdroid/nearby/BluetoothManager;->handler:Landroid/os/Handler;

    const/16 v0, 0x164d    # 8.0E-42f

    .line 69
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "BluetoothManager"

    const-string v1, "handlerThread is already stopped, doing nothing!"

    .line 64
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 65
    invoke-static {p0, v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->sendBroadcast(ILjava/lang/String;)V

    return-void
.end method
