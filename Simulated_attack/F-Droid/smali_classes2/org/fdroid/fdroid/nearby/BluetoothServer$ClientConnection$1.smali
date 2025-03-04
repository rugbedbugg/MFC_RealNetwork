.class Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection$1;
.super Ljava/io/FileInputStream;
.source "BluetoothServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lorg/fdroid/fdroid/nearby/httpish/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;

.field final synthetic val$dataLen:J


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;Ljava/io/File;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection$1;->this$0:Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection;

    iput-wide p3, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection$1;->val$dataLen:J

    .line 287
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-wide v0, p0, Lorg/fdroid/fdroid/nearby/BluetoothServer$ClientConnection$1;->val$dataLen:J

    long-to-int v0, v0

    return v0
.end method
