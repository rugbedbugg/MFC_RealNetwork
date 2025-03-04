.class Lorg/fdroid/fdroid/nearby/BluetoothManager$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 172
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->-$$Nest$smsendFoundBroadcast(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
