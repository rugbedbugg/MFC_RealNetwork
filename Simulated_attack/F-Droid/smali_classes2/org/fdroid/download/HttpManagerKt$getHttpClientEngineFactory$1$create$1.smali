.class final Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;->create(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;

.field final synthetic $customDns:Lokhttp3/Dns;

.field final synthetic this$0:Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lokhttp3/Dns;Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->$customDns:Lokhttp3/Dns;

    iput-object p3, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->this$0:Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lio/ktor/client/engine/okhttp/OkHttpConfig;

    invoke-virtual {p0, p1}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->invoke(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V
    .locals 3

    const-string v0, "$this$create"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->$block:Lkotlin/jvm/functions/Function1;

    .line 27
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;

    iget-object v1, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->$customDns:Lokhttp3/Dns;

    iget-object v2, p0, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1;->this$0:Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;

    invoke-direct {v0, p1, v1, v2}, Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1$create$1$1;-><init>(Lio/ktor/client/engine/okhttp/OkHttpConfig;Lokhttp3/Dns;Lorg/fdroid/download/HttpManagerKt$getHttpClientEngineFactory$1;)V

    invoke-virtual {p1, v0}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
