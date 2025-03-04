.class public interface abstract Lokhttp3/internal/platform/android/SocketAdapter;
.super Ljava/lang/Object;
.source "SocketAdapter.kt"


# virtual methods
.method public abstract configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
.end method

.method public abstract isSupported()Z
.end method

.method public abstract matchesSocket(Ljavax/net/ssl/SSLSocket;)Z
.end method
