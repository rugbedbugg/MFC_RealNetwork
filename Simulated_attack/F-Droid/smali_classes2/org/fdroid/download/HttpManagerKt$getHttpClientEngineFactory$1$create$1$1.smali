.class final Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->invoke(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $customDns:Lokhttp3/Dns;

.field final synthetic $this_create:Lio/ktor/client/engine/okhttp/OkHttpConfig;

.field final synthetic this$0:Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;


# direct methods
.method public static synthetic $r8$lambda$j5v8aZEbsFDyq-MkeO9NFCn77VY(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->invoke$lambda$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lio/ktor/client/engine/okhttp/OkHttpConfig;Lokhttp3/Dns;Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->$this_create:Lio/ktor/client/engine/okhttp/OkHttpConfig;

    iput-object p2, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->$customDns:Lokhttp3/Dns;

    iput-object p3, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->this$0:Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 35
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    .line 37
    :goto_1
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0, p1}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->invoke(Lokhttp3/OkHttpClient$Builder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    const-string v0, "$this$config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->$this_create:Lio/ktor/client/engine/okhttp/OkHttpConfig;

    .line 29
    invoke-virtual {v0}, Lio/ktor/client/engine/HttpClientEngineConfig;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/download/ProxyKt;->isTor(Ljava/net/Proxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lorg/fdroid/download/NoDns;

    invoke-direct {v0}, Lorg/fdroid/download/NoDns;-><init>()V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->$customDns:Lokhttp3/Dns;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 34
    :cond_1
    :goto_0
    new-instance v0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    iget-object v0, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;->this$0:Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;

    .line 39
    invoke-static {v0}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;->access$getConnectionSpecs$p(Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method
