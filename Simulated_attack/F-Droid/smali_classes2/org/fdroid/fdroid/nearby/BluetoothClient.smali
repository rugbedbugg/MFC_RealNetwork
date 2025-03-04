.class public Lorg/fdroid/fdroid/nearby/BluetoothClient;
.super Ljava/lang/Object;
.source "BluetoothClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothClient"


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/BluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public openConnection()Lorg/fdroid/fdroid/nearby/BluetoothConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/BluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    .line 25
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothConstants;->fdroidUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 26
    new-instance v2, Lorg/fdroid/fdroid/nearby/BluetoothConnection;

    invoke-direct {v2, v1}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;-><init>(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->open()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->closeQuietly()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/BluetoothConnection;->closeQuietly()V

    .line 33
    :cond_0
    throw v0
.end method
