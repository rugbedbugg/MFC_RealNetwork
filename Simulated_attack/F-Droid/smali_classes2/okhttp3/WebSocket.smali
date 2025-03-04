.class public interface abstract Lokhttp3/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/WebSocket$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method

.method public abstract send(Lokio/ByteString;)Z
.end method
