.class Lorg/fdroid/fdroid/nearby/BluetoothManager$1;
.super Landroid/os/HandlerThread;
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
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;Lorg/fdroid/fdroid/nearby/BluetoothServer;)V
    .locals 0

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;->val$bluetoothServer:Lorg/fdroid/fdroid/nearby/BluetoothServer;

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;->val$context:Landroid/content/Context;

    .line 94
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 95
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothDeviceFound()Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfputbluetoothAdapter(Landroid/bluetooth/BluetoothAdapter;)V

    .line 98
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->putBluetoothNameBeforeSwap(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    const v1, 0xffff

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;->val$context:Landroid/content/Context;

    sget v2, Lorg/fdroid/fdroid/R$string;->swap_error_cannot_start_bluetooth:I

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;->val$bluetoothServer:Lorg/fdroid/fdroid/nearby/BluetoothServer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;->val$context:Landroid/content/Context;

    sget v2, Lorg/fdroid/fdroid/R$string;->swap_error_cannot_start_bluetooth:I

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$smsendBroadcast(ILjava/lang/String;)V

    .line 112
    :goto_0
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$sfgetbluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/BluetoothManager$1;->val$context:Landroid/content/Context;

    .line 113
    invoke-static {v2, v1}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$smsendFoundBroadcast(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_3
    return-void
.end method
