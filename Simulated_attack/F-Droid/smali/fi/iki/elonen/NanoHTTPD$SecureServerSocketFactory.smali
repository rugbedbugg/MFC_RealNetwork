.class public Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureServerSocketFactory"
.end annotation


# instance fields
.field private sslProtocols:[Ljava/lang/String;

.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Ljava/net/ServerSocket;
    .locals 2

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 502
    invoke-virtual {v0}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 508
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 509
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 510
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    return-object v0
.end method
