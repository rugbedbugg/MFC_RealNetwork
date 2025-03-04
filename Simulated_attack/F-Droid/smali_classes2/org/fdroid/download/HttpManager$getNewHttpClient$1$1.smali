.class final Lorg/fdroid/download/HttpManager$getNewHttpClient$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManager$getNewHttpClient$1;->invoke(Lio/ktor/client/HttpClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $proxyConfig:Ljava/net/Proxy;


# direct methods
.method constructor <init>(Ljava/net/Proxy;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$1;->$proxyConfig:Ljava/net/Proxy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lio/ktor/client/engine/HttpClientEngineConfig;

    invoke-virtual {p0, p1}, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$1;->invoke(Lio/ktor/client/engine/HttpClientEngineConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/engine/HttpClientEngineConfig;)V
    .locals 1

    const-string v0, "$this$engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Lio/ktor/client/engine/HttpClientEngineConfig;->setPipelining(Z)V

    iget-object v0, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$1;->$proxyConfig:Ljava/net/Proxy;

    .line 84
    invoke-virtual {p1, v0}, Lio/ktor/client/engine/HttpClientEngineConfig;->setProxy(Ljava/net/Proxy;)V

    return-void
.end method
