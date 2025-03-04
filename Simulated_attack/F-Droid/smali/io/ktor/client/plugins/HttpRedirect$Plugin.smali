.class public final Lio/ktor/client/plugins/HttpRedirect$Plugin;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"

# interfaces
.implements Lio/ktor/client/plugins/HttpClientPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRedirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plugin"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpRedirect$Plugin;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleCall(Lio/ktor/client/plugins/HttpRedirect$Plugin;Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p6}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->handleCall(Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final handleCall(Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    instance-of v2, v1, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;

    iget v3, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;-><init>(Lio/ktor/client/plugins/HttpRedirect$Plugin;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 74
    iget v5, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-boolean v0, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->Z$0:Z

    iget-object v5, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lio/ktor/http/URLProtocol;

    iget-object v9, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lio/ktor/client/HttpClient;

    iget-object v12, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lio/ktor/client/request/HttpRequestBuilder;

    iget-object v13, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/client/plugins/Sender;

    iget-object v14, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/client/plugins/HttpRedirect$Plugin;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v4

    move-object v4, v2

    move v2, v0

    move-object v0, v13

    move-object/from16 v16, v9

    move-object v9, v7

    move-object v7, v12

    move-object/from16 v12, v16

    move-object/from16 v17, v10

    move-object v10, v8

    move-object/from16 v8, v17

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/client/plugins/HttpRedirectKt;->access$isRedirect(Lio/ktor/http/HttpStatusCode;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 82
    :cond_3
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v7, p2

    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 84
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v8

    invoke-interface {v8}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object v8

    invoke-virtual {v8}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v8

    .line 85
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/http/UrlKt;->getAuthority(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v14, v3

    move-object v11, v5

    move-object v10, v8

    move-object/from16 v0, p1

    move-object v8, v1

    move-object v5, v4

    move/from16 v1, p4

    move-object v4, v2

    move-object/from16 v2, p5

    .line 88
    :goto_1
    invoke-virtual {v2}, Lio/ktor/client/HttpClient;->getMonitor()Lio/ktor/events/Events;

    move-result-object v12

    invoke-virtual {v14}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->getHttpResponseRedirect()Lio/ktor/events/EventDefinition;

    move-result-object v13

    iget-object v15, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Lio/ktor/client/call/HttpClientCall;

    invoke-virtual {v15}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V

    .line 90
    iget-object v12, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lio/ktor/client/call/HttpClientCall;

    invoke-virtual {v12}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v12

    invoke-interface {v12}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v12

    sget-object v13, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v13}, Lio/ktor/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 91
    invoke-static {}, Lio/ktor/client/plugins/HttpRedirectKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received redirect response to "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for request "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 93
    new-instance v3, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v3}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 94
    iget-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-virtual {v3, v6}, Lio/ktor/client/request/HttpRequestBuilder;->takeFromWithExecutionContext(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 95
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/http/URLBuilder;->getParameters()Lio/ktor/http/ParametersBuilder;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/util/StringValuesBuilder;->clear()V

    if-eqz v12, :cond_4

    .line 97
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v6

    invoke-static {v6, v12}, Lio/ktor/http/URLParserKt;->takeFrom(Lio/ktor/http/URLBuilder;Ljava/lang/String;)Lio/ktor/http/URLBuilder;

    :cond_4
    if-nez v1, :cond_5

    .line 102
    invoke-static {v10}, Lio/ktor/http/URLProtocolKt;->isSecure(Lio/ktor/http/URLProtocol;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/http/URLBuilder;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v6

    invoke-static {v6}, Lio/ktor/http/URLProtocolKt;->isSecure(Lio/ktor/http/URLProtocol;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 103
    invoke-static {}, Lio/ktor/client/plugins/HttpRedirectKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not redirect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because of security downgrade"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 104
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    .line 107
    :cond_5
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v6

    invoke-static {v6}, Lio/ktor/http/URLBuilderKt;->getAuthority(Lio/ktor/http/URLBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 108
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v6

    invoke-virtual {v13}, Lio/ktor/http/HttpHeaders;->getAuthorization()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lio/ktor/util/StringValuesBuilderImpl;->remove(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lio/ktor/client/plugins/HttpRedirectKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing Authorization header from redirect for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 93
    :cond_6
    iput-object v3, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 113
    iput-object v14, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$1:Ljava/lang/Object;

    iput-object v7, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$2:Ljava/lang/Object;

    iput-object v2, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$3:Ljava/lang/Object;

    iput-object v8, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$4:Ljava/lang/Object;

    iput-object v11, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$5:Ljava/lang/Object;

    iput-object v10, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$6:Ljava/lang/Object;

    iput-object v9, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$7:Ljava/lang/Object;

    iput-object v8, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->L$8:Ljava/lang/Object;

    iput-boolean v1, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->Z$0:Z

    const/4 v6, 0x1

    iput v6, v4, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->label:I

    invoke-interface {v0, v3, v4}, Lio/ktor/client/plugins/Sender;->execute(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_7

    return-object v5

    :cond_7
    move-object v12, v11

    move-object v11, v2

    move v2, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v8

    .line 74
    :goto_2
    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/call/HttpClientCall;

    invoke-virtual {v1}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/client/plugins/HttpRedirectKt;->access$isRedirect(Lio/ktor/http/HttpStatusCode;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    :cond_8
    move v1, v2

    move-object v5, v3

    move-object v2, v11

    move-object v11, v12

    move-object/from16 v3, p0

    goto/16 :goto_1
.end method


# virtual methods
.method public final getHttpResponseRedirect()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 52
    invoke-static {}, Lio/ktor/client/plugins/HttpRedirect;->access$getHttpResponseRedirect$cp()Lio/ktor/events/EventDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 47
    invoke-static {}, Lio/ktor/client/plugins/HttpRedirect;->access$getKey$cp()Lio/ktor/util/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public install(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;)V
    .locals 3

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lio/ktor/client/plugins/HttpSend;->Plugin:Lio/ktor/client/plugins/HttpSend$Plugin;

    invoke-static {p2, v0}, Lio/ktor/client/plugins/HttpClientPluginKt;->plugin(Lio/ktor/client/HttpClient;Lio/ktor/client/plugins/HttpClientPlugin;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/client/plugins/HttpSend;

    new-instance v1, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;-><init>(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Lio/ktor/client/plugins/HttpSend;->intercept(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public bridge synthetic install(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 46
    check-cast p1, Lio/ktor/client/plugins/HttpRedirect;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->install(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method public prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRedirect;
    .locals 3

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lio/ktor/client/plugins/HttpRedirect$Config;

    invoke-direct {v0}, Lio/ktor/client/plugins/HttpRedirect$Config;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance p1, Lio/ktor/client/plugins/HttpRedirect;

    .line 57
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRedirect$Config;->getCheckHttpMethod()Z

    move-result v1

    .line 58
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRedirect$Config;->getAllowHttpsDowngrade()Z

    move-result v0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p1, v1, v0, v2}, Lio/ktor/client/plugins/HttpRedirect;-><init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic prepare(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRedirect;

    move-result-object p1

    return-object p1
.end method
