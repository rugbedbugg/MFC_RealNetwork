.class public interface abstract Lio/ktor/client/engine/HttpClientEngine;
.super Ljava/lang/Object;
.source "HttpClientEngine.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/engine/HttpClientEngine$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract execute(Lio/ktor/client/request/HttpRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract getConfig()Lio/ktor/client/engine/HttpClientEngineConfig;
.end method

.method public abstract getSupportedCapabilities()Ljava/util/Set;
.end method

.method public abstract install(Lio/ktor/client/HttpClient;)V
.end method
