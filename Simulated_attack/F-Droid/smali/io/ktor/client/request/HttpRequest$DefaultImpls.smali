.class public abstract Lio/ktor/client/request/HttpRequest$DefaultImpls;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/request/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getCoroutineContext(Lio/ktor/client/request/HttpRequest;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 32
    invoke-interface {p0}, Lio/ktor/client/request/HttpRequest;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method
