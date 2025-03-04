.class public final Lio/ktor/client/request/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequest.kt"

# interfaces
.implements Lio/ktor/http/HttpMessageBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/request/HttpRequestBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/request/HttpRequestBuilder$Companion;


# instance fields
.field private final attributes:Lio/ktor/util/Attributes;

.field private body:Ljava/lang/Object;

.field private executionContext:Lkotlinx/coroutines/Job;

.field private final headers:Lio/ktor/http/HeadersBuilder;

.field private method:Lio/ktor/http/HttpMethod;

.field private final url:Lio/ktor/http/URLBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lio/ktor/client/request/HttpRequestBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/request/HttpRequestBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/request/HttpRequestBuilder;->Companion:Lio/ktor/client/request/HttpRequestBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v12, Lio/ktor/http/URLBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/ktor/http/URLBuilder;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v12, p0, Lio/ktor/client/request/HttpRequestBuilder;->url:Lio/ktor/http/URLBuilder;

    .line 70
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->method:Lio/ktor/http/HttpMethod;

    .line 75
    new-instance v0, Lio/ktor/http/HeadersBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->headers:Lio/ktor/http/HeadersBuilder;

    .line 80
    sget-object v0, Lio/ktor/client/utils/EmptyContent;->INSTANCE:Lio/ktor/client/utils/EmptyContent;

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->body:Ljava/lang/Object;

    .line 100
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->executionContext:Lkotlinx/coroutines/Job;

    .line 106
    invoke-static {v2}, Lio/ktor/util/AttributesJvmKt;->Attributes(Z)Lio/ktor/util/Attributes;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    return-void
.end method


# virtual methods
.method public final build()Lio/ktor/client/request/HttpRequestData;
    .locals 8

    .line 117
    new-instance v7, Lio/ktor/client/request/HttpRequestData;

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->url:Lio/ktor/http/URLBuilder;

    .line 118
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/client/request/HttpRequestBuilder;->method:Lio/ktor/http/HttpMethod;

    .line 120
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v3

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->body:Ljava/lang/Object;

    .line 121
    instance-of v4, v0, Lio/ktor/http/content/OutgoingContent;

    if-eqz v4, :cond_0

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_1

    iget-object v5, p0, Lio/ktor/client/request/HttpRequestBuilder;->executionContext:Lkotlinx/coroutines/Job;

    iget-object v6, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    move-object v0, v7

    .line 117
    invoke-direct/range {v0 .. v6}, Lio/ktor/client/request/HttpRequestData;-><init>(Lio/ktor/http/Url;Lio/ktor/http/HttpMethod;Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;Lkotlinx/coroutines/Job;Lio/ktor/util/Attributes;)V

    return-object v7

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No request transformation found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/ktor/client/request/HttpRequestBuilder;->body:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public final getBody()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBodyType()Lio/ktor/util/reflect/TypeInfo;
    .locals 2

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    .line 87
    invoke-static {}, Lio/ktor/client/request/RequestBodyKt;->getBodyTypeAttributeKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/util/reflect/TypeInfo;

    return-object v0
.end method

.method public final getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    .line 172
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
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->executionContext:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/HeadersBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->headers:Lio/ktor/http/HeadersBuilder;

    return-object v0
.end method

.method public final getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public final getUrl()Lio/ktor/http/URLBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->url:Lio/ktor/http/URLBuilder;

    return-object v0
.end method

.method public final setBody(Ljava/lang/Object;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->body:Ljava/lang/Object;

    return-void
.end method

.method public final setBodyType(Lio/ktor/util/reflect/TypeInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    .line 91
    invoke-static {}, Lio/ktor/client/request/RequestBodyKt;->getBodyTypeAttributeKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    .line 93
    invoke-static {}, Lio/ktor/client/request/RequestBodyKt;->getBodyTypeAttributeKey()Lio/ktor/util/AttributeKey;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/ktor/util/Attributes;->remove(Lio/ktor/util/AttributeKey;)V

    :goto_0
    return-void
.end method

.method public final setCapability(Lio/ktor/client/engine/HttpClientEngineCapability;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capability"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    .line 163
    invoke-static {}, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->getENGINE_CAPABILITIES_KEY()Lio/ktor/util/AttributeKey;

    move-result-object v1

    sget-object v2, Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;->INSTANCE:Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;

    invoke-interface {v0, v1, v2}, Lio/ktor/util/Attributes;->computeIfAbsent(Lio/ktor/util/AttributeKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 164
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setExecutionContext$ktor_client_core(Lkotlinx/coroutines/Job;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->executionContext:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setMethod(Lio/ktor/http/HttpMethod;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->method:Lio/ktor/http/HttpMethod;

    return-void
.end method

.method public final takeFrom(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lio/ktor/client/request/HttpRequestBuilder;->method:Lio/ktor/http/HttpMethod;

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->method:Lio/ktor/http/HttpMethod;

    .line 148
    iget-object v0, p1, Lio/ktor/client/request/HttpRequestBuilder;->body:Ljava/lang/Object;

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->body:Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getBodyType()Lio/ktor/util/reflect/TypeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->url:Lio/ktor/http/URLBuilder;

    .line 150
    iget-object v1, p1, Lio/ktor/client/request/HttpRequestBuilder;->url:Lio/ktor/http/URLBuilder;

    invoke-static {v0, v1}, Lio/ktor/http/URLUtilsKt;->takeFrom(Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)Lio/ktor/http/URLBuilder;

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->url:Lio/ktor/http/URLBuilder;

    .line 151
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->getEncodedPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/http/URLBuilder;->setEncodedPathSegments(Ljava/util/List;)V

    .line 152
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lio/ktor/util/StringValuesKt;->appendAll(Lio/ktor/util/StringValuesBuilder;Lio/ktor/util/StringValuesBuilder;)Lio/ktor/util/StringValuesBuilder;

    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    .line 153
    iget-object p1, p1, Lio/ktor/client/request/HttpRequestBuilder;->attributes:Lio/ktor/util/Attributes;

    invoke-static {v0, p1}, Lio/ktor/util/AttributesKt;->putAll(Lio/ktor/util/Attributes;Lio/ktor/util/Attributes;)V

    return-object p0
.end method

.method public final takeFromWithExecutionContext(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p1, Lio/ktor/client/request/HttpRequestBuilder;->executionContext:Lkotlinx/coroutines/Job;

    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->executionContext:Lkotlinx/coroutines/Job;

    .line 139
    invoke-virtual {p0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->takeFrom(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    move-result-object p1

    return-object p1
.end method
