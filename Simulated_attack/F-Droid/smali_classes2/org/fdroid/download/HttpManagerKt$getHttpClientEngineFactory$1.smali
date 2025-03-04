.class public final Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;
.super Ljava/lang/Object;
.source "HttpManager.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngineFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManagerKt;->getHttpClientEngineFactory(Lokhttp3/Dns;)Lio/ktor/client/engine/HttpClientEngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/engine/HttpClientEngineFactory;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0003H\u0016R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "org/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1",
        "Lio/ktor/client/engine/HttpClientEngineFactory;",
        "Lio/ktor/client/engine/okhttp/OkHttpConfig;",
        "Lkotlin/Function1;",
        "",
        "block",
        "Lio/ktor/client/engine/HttpClientEngine;",
        "create",
        "",
        "Lokhttp3/ConnectionSpec;",
        "connectionSpecs",
        "Ljava/util/List;",
        "download_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $customDns:Lokhttp3/Dns;

.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/Dns;)V
    .locals 2

    iput-object p1, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;->$customDns:Lokhttp3/Dns;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Lokhttp3/ConnectionSpec;

    const/4 v0, 0x0

    .line 21
    sget-object v1, Lokhttp3/ConnectionSpec;->RESTRICTED_TLS:Lokhttp3/ConnectionSpec;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 22
    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 23
    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v1, p1, v0

    .line 20
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;->connectionSpecs:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getConnectionSpecs$p(Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public create(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lio/ktor/client/engine/HttpClientEngine;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttp;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttp;

    new-instance v1, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;

    iget-object v2, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;->$customDns:Lokhttp3/Dns;

    invoke-direct {v1, p1, v2, p0}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;-><init>(Lkotlin/jvm/functions/Function1;Lokhttp3/Dns;Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;)V

    invoke-virtual {v0, v1}, Lio/ktor/client/engine/okhttp/OkHttp;->create(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;

    move-result-object p1

    return-object p1
.end method
