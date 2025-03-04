.class public interface abstract Lfi/iki/elonen/NanoHTTPD$IHTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHTTPSession"
.end annotation


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
.end method

.method public abstract getMethod()Lfi/iki/elonen/NanoHTTPD$Method;
.end method

.method public abstract getParms()Ljava/util/Map;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract parseBody(Ljava/util/Map;)V
.end method
