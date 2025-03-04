.class public final Lio/ktor/client/engine/okhttp/OkHttpConfig;
.super Lio/ktor/client/engine/HttpClientEngineConfig;
.source "OkHttpConfig.kt"


# instance fields
.field private clientCacheSize:I

.field private config:Lkotlin/jvm/functions/Function1;

.field private preconfigured:Lokhttp3/OkHttpClient;

.field private webSocketFactory:Lokhttp3/WebSocket$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lio/ktor/client/engine/HttpClientEngineConfig;-><init>()V

    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;

    iput-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    const/16 v0, 0xa

    iput v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->clientCacheSize:I

    return-void
.end method


# virtual methods
.method public final config(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    .line 44
    new-instance v1, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$2;

    invoke-direct {v1, v0, p1}, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final getClientCacheSize()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->clientCacheSize:I

    return v0
.end method

.method public final getConfig$ktor_client_okhttp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPreconfigured()Lokhttp3/OkHttpClient;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->preconfigured:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getWebSocketFactory()Lokhttp3/WebSocket$Factory;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    return-object v0
.end method
