.class public final Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"

# interfaces
.implements Lio/ktor/client/request/HttpRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpCallValidatorKt;->HttpRequest(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $builder:Lio/ktor/client/request/HttpRequestBuilder;

.field private final attributes:Lio/ktor/util/Attributes;

.field private final headers:Lio/ktor/http/Headers;

.field private final method:Lio/ktor/http/HttpMethod;

.field private final url:Lio/ktor/http/Url;


# direct methods
.method constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->$builder:Lio/ktor/client/request/HttpRequestBuilder;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->method:Lio/ktor/http/HttpMethod;

    .line 162
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->url:Lio/ktor/http/Url;

    .line 163
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->attributes:Lio/ktor/util/Attributes;

    .line 164
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->headers:Lio/ktor/http/Headers;

    return-void
.end method


# virtual methods
.method public getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->attributes:Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call is not initialized"

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 159
    invoke-static {p0}, Lio/ktor/client/request/HttpRequest$DefaultImpls;->getCoroutineContext(Lio/ktor/client/request/HttpRequest;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidatorKt$HttpRequest$1;->url:Lio/ktor/http/Url;

    return-object v0
.end method
