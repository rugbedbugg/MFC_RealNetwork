.class public Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;
.super Lorg/fdroid/fdroid/nearby/peers/WifiPeer;
.source "BonjourPeer.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "BonjourPeer"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private final serviceInfo:Ljavax/jmdns/impl/FDroidServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer$1;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Ljavax/jmdns/impl/FDroidServiceInfo;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljavax/jmdns/ServiceInfo;

    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;-><init>(Ljavax/jmdns/ServiceInfo;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/fdroid/fdroid/nearby/peers/BonjourPeer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;-><init>()V

    .line 40
    new-instance v0, Ljavax/jmdns/impl/FDroidServiceInfo;

    invoke-direct {v0, p1}, Ljavax/jmdns/impl/FDroidServiceInfo;-><init>(Ljavax/jmdns/ServiceInfo;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->serviceInfo:Ljavax/jmdns/impl/FDroidServiceInfo;

    .line 41
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->name:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Ljavax/jmdns/impl/FDroidServiceInfo;->getRepoAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->uri:Landroid/net/Uri;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/nearby/peers/WifiPeer;->shouldPromptForSwapBack:Z

    return-void
.end method

.method public static getInstance(Ljavax/jmdns/ServiceInfo;)Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;
    .locals 3

    const-string v0, "type"

    .line 30
    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerprint"

    .line 31
    invoke-virtual {p0, v1}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "fdroidrepo"

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    .line 33
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;-><init>(Ljavax/jmdns/ServiceInfo;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->serviceInfo:Ljavax/jmdns/impl/FDroidServiceInfo;

    .line 75
    invoke-virtual {v0}, Ljavax/jmdns/impl/FDroidServiceInfo;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->serviceInfo:Ljavax/jmdns/impl/FDroidServiceInfo;

    .line 53
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepoAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->serviceInfo:Ljavax/jmdns/impl/FDroidServiceInfo;

    .line 67
    invoke-virtual {v0}, Ljavax/jmdns/impl/FDroidServiceInfo;->getRepoAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/peers/BonjourPeer;->serviceInfo:Ljavax/jmdns/impl/FDroidServiceInfo;

    .line 85
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
