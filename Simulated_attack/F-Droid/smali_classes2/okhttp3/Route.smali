.class public final Lokhttp3/Route;
.super Ljava/lang/Object;
.source "Route.kt"


# instance fields
.field private final address:Lokhttp3/Address;

.field private final proxy:Ljava/net/Proxy;

.field private final socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iput-object p2, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    iput-object p3, p0, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final address()Lokhttp3/Address;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 76
    instance-of v0, p1, Lokhttp3/Route;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lokhttp3/Route;

    iget-object v0, p1, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v1, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    iget-object v1, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p1, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 84
    invoke-virtual {v0}, Lokhttp3/Address;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 85
    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    .line 86
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final proxy()Ljava/net/Proxy;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final requiresTunnel()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 73
    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final socketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Route;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
