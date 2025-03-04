.class public Lorg/fdroid/fdroid/nearby/peers/WifiPeer;
.super Ljava/lang/Object;
.source "WifiPeer.java"

# interfaces
.implements Lorg/fdroid/fdroid/nearby/peers/Peer;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/fdroid/fdroid/nearby/peers/WifiPeer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected name:Ljava/lang/String;

.field protected shouldPromptForSwapBack:Z

.field protected uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->shouldPromptForSwapBack:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/fdroid/fdroid/nearby/peers/WifiPeer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/fdroid/nearby/NewRepoConfig;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->getRepoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->preventFurtherSwaps()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 38
    instance-of v0, p1, Lorg/fdroid/fdroid/nearby/peers/BluetoothPeer;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    .line 42
    instance-of v1, p0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;

    if-eqz v1, :cond_1

    .line 43
    check-cast p1, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;

    .line 44
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 46
    :cond_1
    check-cast p1, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->getRepoAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->getRepoAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->uri:Landroid/net/Uri;

    const-string v1, "fingerprint"

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 0
    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_wifi:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRepoAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->uri:Landroid/net/Uri;

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public shouldPromptForSwapBack()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->shouldPromptForSwapBack:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->name:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->uri:Landroid/net/Uri;

    .line 92
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->shouldPromptForSwapBack:Z

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
