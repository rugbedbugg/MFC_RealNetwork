.class Lorg/fdroid/fdroid/nearby/peers/WifiPeer$1;
.super Ljava/lang/Object;
.source "WifiPeer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/peers/WifiPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/fdroid/fdroid/nearby/peers/WifiPeer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer$1;->createFromParcel(Landroid/os/Parcel;)Lorg/fdroid/fdroid/nearby/peers/WifiPeer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/fdroid/fdroid/nearby/peers/WifiPeer;
    .locals 2

    .line 102
    new-instance v0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;-><init>(Landroid/os/Parcel;Lorg/fdroid/fdroid/nearby/peers/WifiPeer-IA;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer$1;->newArray(I)[Lorg/fdroid/fdroid/nearby/peers/WifiPeer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/fdroid/fdroid/nearby/peers/WifiPeer;
    .locals 0

    .line 106
    new-array p1, p1, [Lorg/fdroid/fdroid/nearby/peers/WifiPeer;

    return-object p1
.end method
