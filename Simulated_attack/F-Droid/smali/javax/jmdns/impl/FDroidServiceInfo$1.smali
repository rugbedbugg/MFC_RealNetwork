.class Ljavax/jmdns/impl/FDroidServiceInfo$1;
.super Ljava/lang/Object;
.source "FDroidServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/FDroidServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 113
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/FDroidServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Ljavax/jmdns/impl/FDroidServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ljavax/jmdns/impl/FDroidServiceInfo;
    .locals 1

    .line 115
    new-instance v0, Ljavax/jmdns/impl/FDroidServiceInfo;

    invoke-direct {v0, p1}, Ljavax/jmdns/impl/FDroidServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/FDroidServiceInfo$1;->newArray(I)[Ljavax/jmdns/impl/FDroidServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ljavax/jmdns/impl/FDroidServiceInfo;
    .locals 0

    .line 119
    new-array p1, p1, [Ljavax/jmdns/impl/FDroidServiceInfo;

    return-object p1
.end method
