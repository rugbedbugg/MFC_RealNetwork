.class public Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAsyncRunner"
.end annotation


# instance fields
.field private requestCount:J

.field private final running:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 2

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .line 360
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    .line 366
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    .locals 4

    iget-wide v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    .line 372
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoHttpd Request Processor (#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    .line 375
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
