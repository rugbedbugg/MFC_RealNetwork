.class final synthetic Lio/ktor/client/engine/okhttp/OkHttpEngine$clientCache$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "OkHttpEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/okhttp/OkHttpEngine;-><init>(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 0
    const/4 v1, 0x1

    const-class v3, Lio/ktor/client/engine/okhttp/OkHttpEngine;

    const-string v4, "createOkHttpClient"

    const-string v5, "createOkHttpClient(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngine$clientCache$1;->invoke(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 40
    check-cast v0, Lio/ktor/client/engine/okhttp/OkHttpEngine;

    invoke-static {v0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->access$createOkHttpClient(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method
