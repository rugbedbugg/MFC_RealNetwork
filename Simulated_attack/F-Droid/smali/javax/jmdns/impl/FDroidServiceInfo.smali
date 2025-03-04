.class public Ljavax/jmdns/impl/FDroidServiceInfo;
.super Ljavax/jmdns/impl/ServiceInfoImpl;
.source "FDroidServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljavax/jmdns/impl/FDroidServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljavax/jmdns/impl/FDroidServiceInfo$1;

    invoke-direct {v0}, Ljavax/jmdns/impl/FDroidServiceInfo$1;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/FDroidServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v9

    .line 62
    :goto_0
    invoke-static {p1}, Ljavax/jmdns/impl/FDroidServiceInfo;->readBytes(Landroid/os/Parcel;)[B

    move-result-object v8

    move-object v0, p0

    .line 54
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v1, v9

    :goto_1
    if-ge v1, v0, :cond_1

    .line 67
    :try_start_0
    invoke-static {p1}, Ljavax/jmdns/impl/FDroidServiceInfo;->readBytes(Landroid/os/Parcel;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_3
    if-ge v9, v0, :cond_2

    .line 76
    :try_start_1
    invoke-static {p1}, Ljavax/jmdns/impl/FDroidServiceInfo;->readBytes(Landroid/os/Parcel;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    return-void
.end method

.method private static readBytes(Landroid/os/Parcel;)[B
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 4

    const-string v0, "fingerprint"

    .line 32
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPropertyBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 33
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 36
    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljavax/jmdns/impl/util/ByteWrangler;->readUTF([BII)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getRepoAddress()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 90
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    move v0, p2

    .line 100
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v1

    aget-object v1, v1, v0

    .line 102
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 107
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    aget-object v0, v0, p2

    .line 108
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
