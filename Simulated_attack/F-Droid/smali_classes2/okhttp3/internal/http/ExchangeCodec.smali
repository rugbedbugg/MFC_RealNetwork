.class public interface abstract Lokhttp3/internal/http/ExchangeCodec;
.super Ljava/lang/Object;
.source "ExchangeCodec.kt"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract flushRequest()V
.end method

.method public abstract getConnection()Lokhttp3/internal/connection/RealConnection;
.end method

.method public abstract openResponseBodySource(Lokhttp3/Response;)Lokio/Source;
.end method

.method public abstract readResponseHeaders(Z)Lokhttp3/Response$Builder;
.end method

.method public abstract reportedContentLength(Lokhttp3/Response;)J
.end method

.method public abstract writeRequestHeaders(Lokhttp3/Request;)V
.end method
