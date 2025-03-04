.class public final Lio/ktor/client/request/HttpRequestData;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# instance fields
.field private final attributes:Lio/ktor/util/Attributes;

.field private final body:Lio/ktor/http/content/OutgoingContent;

.field private final executionContext:Lkotlinx/coroutines/Job;

.field private final headers:Lio/ktor/http/Headers;

.field private final method:Lio/ktor/http/HttpMethod;

.field private final requiredCapabilities:Ljava/util/Set;

.field private final url:Lio/ktor/http/Url;


# direct methods
.method public constructor <init>(Lio/ktor/http/Url;Lio/ktor/http/HttpMethod;Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;Lkotlinx/coroutines/Job;Lio/ktor/util/Attributes;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/request/HttpRequestData;->url:Lio/ktor/http/Url;

    iput-object p2, p0, Lio/ktor/client/request/HttpRequestData;->method:Lio/ktor/http/HttpMethod;

    iput-object p3, p0, Lio/ktor/client/request/HttpRequestData;->headers:Lio/ktor/http/Headers;

    iput-object p4, p0, Lio/ktor/client/request/HttpRequestData;->body:Lio/ktor/http/content/OutgoingContent;

    iput-object p5, p0, Lio/ktor/client/request/HttpRequestData;->executionContext:Lkotlinx/coroutines/Job;

    iput-object p6, p0, Lio/ktor/client/request/HttpRequestData;->attributes:Lio/ktor/util/Attributes;

    .line 202
    invoke-static {}, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->getENGINE_CAPABILITIES_KEY()Lio/ktor/util/AttributeKey;

    move-result-object p1

    invoke-interface {p6, p1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lio/ktor/client/request/HttpRequestData;->requiredCapabilities:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->attributes:Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public final getBody()Lio/ktor/http/content/OutgoingContent;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->body:Lio/ktor/http/content/OutgoingContent;

    return-object v0
.end method

.method public final getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->attributes:Lio/ktor/util/Attributes;

    .line 195
    invoke-static {}, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->getENGINE_CAPABILITIES_KEY()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getExecutionContext()Lkotlinx/coroutines/Job;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->executionContext:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public final getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public final getRequiredCapabilities$ktor_client_core()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->requiredCapabilities:Ljava/util/Set;

    return-object v0
.end method

.method public final getUrl()Lio/ktor/http/Url;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestData;->url:Lio/ktor/http/Url;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequestData(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/request/HttpRequestData;->url:Lio/ktor/http/Url;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/request/HttpRequestData;->method:Lio/ktor/http/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
