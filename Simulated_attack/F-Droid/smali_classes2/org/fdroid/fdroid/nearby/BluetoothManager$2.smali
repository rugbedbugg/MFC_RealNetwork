.class Lorg/fdroid/fdroid/nearby/BluetoothManager$2;
.super Landroid/os/Handler;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/BluetoothManager;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bluetoothServer:Lorg/fdroid/fdroid/nearby/BluetoothServer;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lorg/fdroid/fdroid/nearby/BluetoothServer;)V
    .locals 0

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$2;->val$bluetoothServer:Lorg/fdroid/fdroid/nearby/BluetoothServer;

    .line 118
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$2;->val$context:Landroid/content/Context;

    .line 121
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 122
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothDeviceFound()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$2;->val$bluetoothServer:Lorg/fdroid/fdroid/nearby/BluetoothServer;

    .line 123
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/BluetoothServer;->close()V

    .line 124
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 126
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->wasBluetoothEnabledBeforeSwap()Z

    move-result p1

    if-nez p1, :cond_0

    .line 127
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 129
    :cond_0
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getBluetoothNameBeforeSwap()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 134
    :cond_1
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgethandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    const/4 p1, 0x0

    .line 135
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfputhandlerThread(Landroid/os/HandlerThread;)V

    const/4 v0, 0x3

    .line 136
    invoke-static {v0, p1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void
.end method
