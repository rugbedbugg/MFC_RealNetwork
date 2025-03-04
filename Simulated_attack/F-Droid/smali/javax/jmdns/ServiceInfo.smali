.class public abstract Ljavax/jmdns/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/ServiceInfo$Fields;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 10

    .line 159
    new-instance v9, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    return-object v9
.end method


# virtual methods
.method public abstract clone()Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getApplication()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getInet4Addresses()[Ljava/net/Inet4Address;
.end method

.method public abstract getInet6Addresses()[Ljava/net/Inet6Address;
.end method

.method public abstract getInetAddresses()[Ljava/net/InetAddress;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getQualifiedName()Ljava/lang/String;
.end method

.method public abstract getServer()Ljava/lang/String;
.end method

.method public abstract getSubtype()Ljava/lang/String;
.end method

.method public abstract getTextBytes()[B
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getWeight()I
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasSameAddresses(Ljavax/jmdns/ServiceInfo;)Z
.end method

.method public abstract isPersistent()Z
.end method
