.class public Lfi/iki/elonen/NanoHTTPD$ClientHandler;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 180
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 181
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 188
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 189
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$100(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    move-result-object v1

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;->create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-result-object v4

    .line 190
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    :goto_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 191
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    .line 206
    :cond_0
    :goto_1
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 207
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 208
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 209
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    goto :goto_3

    .line 202
    :goto_2
    :try_start_1
    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_1

    const-string v2, "NanoHttpd Shutdown"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_0

    .line 203
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Communication with the client broken, or an bug in the handler code"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 206
    :goto_4
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 207
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 208
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 209
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    throw v1
.end method
