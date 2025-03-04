.class final Lorg/fdroid/download/HttpManager$getNewHttpClient$1$3;
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

.field final synthetic this$0:Lorg/fdroid/download/HttpManager;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpManager;Ljava/net/Proxy;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$3;->this$0:Lorg/fdroid/download/HttpManager;

    iput-object p2, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$3;->$proxyConfig:Ljava/net/Proxy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    invoke-virtual {p0, p1}, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$3;->invoke(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)V
    .locals 3

    const-string v0, "$this$install"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$3;->this$0:Lorg/fdroid/download/HttpManager;

    .line 90
    invoke-static {v0}, Lorg/fdroid/download/HttpManager;->access$getHighTimeouts$p(Lorg/fdroid/download/HttpManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/download/HttpManager$getNewHttpClient$1$3;->$proxyConfig:Ljava/net/Proxy;

    invoke-static {v0}, Lorg/fdroid/download/ProxyKt;->isTor(Ljava/net/Proxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/32 v0, 0x493e0

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setConnectTimeoutMillis(Ljava/lang/Long;)V

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setSocketTimeoutMillis(Ljava/lang/Long;)V

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setRequestTimeoutMillis(Ljava/lang/Long;)V

    :cond_1
    return-void
.end method
