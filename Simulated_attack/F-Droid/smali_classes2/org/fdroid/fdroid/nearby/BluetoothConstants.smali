.class Lorg/fdroid/fdroid/nearby/BluetoothConstants;
.super Ljava/lang/Object;
.source "BluetoothConstants.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fdroidUuid()Ljava/util/UUID;
    .locals 1

    const-string v0, "cd59ba31-5729-b3bb-cb29-732b59eb61aa"

    .line 15
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
