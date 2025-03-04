.class public abstract Lio/ktor/client/engine/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# static fields
.field private static final DATE_HEADERS:Ljava/util/Set;

.field private static final KTOR_DEFAULT_USER_AGENT:Ljava/lang/String; = "Ktor client"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getExpires()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getLastModified()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getIfModifiedSince()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getIfUnmodifiedSince()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/UtilsKt;->DATE_HEADERS:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getDATE_HEADERS$p()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/engine/UtilsKt;->DATE_HEADERS:Ljava/util/Set;

    return-object v0
.end method

.method public static final callContext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v0, Lio/ktor/client/engine/KtorCallContextElement;->Companion:Lio/ktor/client/engine/KtorCallContextElement$Companion;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lio/ktor/client/engine/KtorCallContextElement;

    invoke-virtual {p0}, Lio/ktor/client/engine/KtorCallContextElement;->getCallContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public static final mergeHeaders(Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function2;)V
    .locals 3

    const-string v0, "requestHeaders"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;-><init>(Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;)V

    invoke-static {v0}, Lio/ktor/client/utils/HeadersKt;->buildHeaders(Lkotlin/jvm/functions/Function1;)Lio/ktor/http/Headers;

    move-result-object v0

    .line 40
    new-instance v1, Lio/ktor/client/engine/UtilsKt$mergeHeaders$2;

    invoke-direct {v1, p2}, Lio/ktor/client/engine/UtilsKt$mergeHeaders$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1}, Lio/ktor/util/StringValues;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 55
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v1

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Lio/ktor/client/engine/UtilsKt;->needUserAgent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/ktor/client/engine/UtilsKt;->KTOR_DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/ktor/http/HeaderValueWithParameters;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 61
    :cond_1
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v1

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 62
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_2
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 65
    :cond_3
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 66
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v2, :cond_6

    .line 69
    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private static final needUserAgent()Z
    .locals 1

    .line 106
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-virtual {v0}, Lio/ktor/util/PlatformUtils;->getIS_BROWSER()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
