.class public final Lorg/fdroid/download/ProxyKt;
.super Ljava/lang/Object;
.source "Proxy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "DEFAULT_PROXY_HOST",
        "",
        "DEFAULT_PROXY_HTTP_PORT",
        "",
        "DEFAULT_PROXY_SOCKS_PORT",
        "isTor",
        "",
        "Ljava/net/Proxy;",
        "Lio/ktor/client/engine/ProxyConfig;",
        "download_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_PROXY_HOST:Ljava/lang/String; = "127.0.0.1"

.field private static final DEFAULT_PROXY_HTTP_PORT:I = 0x1fb6

.field private static final DEFAULT_PROXY_SOCKS_PORT:I = 0x235a


# direct methods
.method public static final isTor(Ljava/net/Proxy;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, "127.0.0.1"

    .line 16
    invoke-static {v1}, Lio/ktor/http/IpParserKt;->hostIsIp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0}, Lio/ktor/client/engine/ProxyConfigJvmKt;->resolveAddress(Ljava/net/Proxy;)Ljava/net/SocketAddress;

    move-result-object v1

    .line 18
    invoke-static {p0}, Lio/ktor/client/engine/ProxyConfigJvmKt;->getType(Ljava/net/Proxy;)Lio/ktor/client/engine/ProxyType;

    move-result-object v2

    sget-object v3, Lio/ktor/client/engine/ProxyType;->HTTP:Lio/ktor/client/engine/ProxyType;

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Lio/ktor/util/network/NetworkAddressJvmKt;->getPort(Ljava/net/SocketAddress;)I

    move-result v2

    const/16 v3, 0x1fb6

    if-eq v2, v3, :cond_2

    .line 19
    :cond_1
    invoke-static {p0}, Lio/ktor/client/engine/ProxyConfigJvmKt;->getType(Ljava/net/Proxy;)Lio/ktor/client/engine/ProxyType;

    move-result-object p0

    sget-object v2, Lio/ktor/client/engine/ProxyType;->SOCKS:Lio/ktor/client/engine/ProxyType;

    if-ne p0, v2, :cond_3

    invoke-static {v1}, Lio/ktor/util/network/NetworkAddressJvmKt;->getPort(Ljava/net/SocketAddress;)I

    move-result p0

    const/16 v1, 0x235a

    if-ne p0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method
