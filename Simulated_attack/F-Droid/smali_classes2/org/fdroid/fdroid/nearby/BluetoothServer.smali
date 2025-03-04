.class public Lorg/fdroid/fdroid/nearby/BluetoothServer;
.super Ljava/lang/Thread;
.source "BluetoothServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothServer"


# instance fields
.field private final clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final webRoot:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->clients:Ljava/util/List;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->webRoot:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->clients:Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_1

    .line 54
    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "BluetoothServer"

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    :try_start_0
    const-string v2, "FDroid App Swap"

    .line 65
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothConstants;->fdroidUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    iput-object v2, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Server stopped so will terminate loop looking for client connections."

    .line 73
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "User disabled Bluetooth from outside, stopping."

    .line 78
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 83
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "Server stopped after socket accepted from client, but before initiating connection."

    .line 86
    invoke-static {v0, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_2

    .line 89
    :cond_3
    new-instance v3, Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;

    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->webRoot:Ljava/io/File;

    invoke-direct {v3, v2, v4}, Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;-><init>(Landroid/bluetooth/BluetoothSocket;Ljava/io/File;)V

    .line 90
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer;->clients:Ljava/util/List;

    .line 91
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_2
    const-string v3, "Error receiving client connection over Bluetooth server socket, will continue listening for other clients"

    .line 94
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Error starting Bluetooth server socket, will stop the server now"

    .line 67
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
