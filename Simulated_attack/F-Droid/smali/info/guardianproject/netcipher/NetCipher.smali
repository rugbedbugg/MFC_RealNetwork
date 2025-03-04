.class public abstract Linfo/guardianproject/netcipher/NetCipher;
.super Ljava/lang/Object;
.source "NetCipher.java"


# static fields
.field public static final ORBOT_HTTP_PROXY:Ljava/net/Proxy;

.field public static final ORBOT_SOCKS_PROXY:Ljava/net/Proxy;

.field private static proxy:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x1fb6

    const-string v4, "127.0.0.1"

    invoke-direct {v2, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Linfo/guardianproject/netcipher/NetCipher;->ORBOT_HTTP_PROXY:Ljava/net/Proxy;

    .line 56
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x235a

    invoke-direct {v2, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Linfo/guardianproject/netcipher/NetCipher;->ORBOT_SOCKS_PROXY:Ljava/net/Proxy;

    return-void
.end method

.method public static clearProxy()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-static {v0}, Linfo/guardianproject/netcipher/NetCipher;->setProxy(Ljava/net/Proxy;)V

    return-void
.end method

.method public static getProxy()Ljava/net/Proxy;
    .locals 1

    .line 0
    sget-object v0, Linfo/guardianproject/netcipher/NetCipher;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public static setProxy(Ljava/net/Proxy;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Linfo/guardianproject/netcipher/NetCipher;->proxy:Ljava/net/Proxy;

    sget-object v1, Linfo/guardianproject/netcipher/NetCipher;->ORBOT_HTTP_PROXY:Ljava/net/Proxy;

    if-ne v0, v1, :cond_0

    const-string p0, "NetCipher"

    const-string v0, "useTor is enabled, ignoring new proxy settings!"

    .line 101
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sput-object p0, Linfo/guardianproject/netcipher/NetCipher;->proxy:Ljava/net/Proxy;

    :goto_0
    return-void
.end method

.method public static useTor()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object v0, Linfo/guardianproject/netcipher/NetCipher;->ORBOT_HTTP_PROXY:Ljava/net/Proxy;

    .line 141
    invoke-static {v0}, Linfo/guardianproject/netcipher/NetCipher;->setProxy(Ljava/net/Proxy;)V

    goto :goto_0

    :cond_0
    sget-object v0, Linfo/guardianproject/netcipher/NetCipher;->ORBOT_SOCKS_PROXY:Ljava/net/Proxy;

    .line 143
    invoke-static {v0}, Linfo/guardianproject/netcipher/NetCipher;->setProxy(Ljava/net/Proxy;)V

    :goto_0
    return-void
.end method
