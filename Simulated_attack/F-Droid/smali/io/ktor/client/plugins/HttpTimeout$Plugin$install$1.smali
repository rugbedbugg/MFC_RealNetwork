.class final Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpTimeout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpTimeout$Plugin;->install(Lio/ktor/client/plugins/HttpTimeout;Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/HttpTimeout;

.field final synthetic $scope:Lio/ktor/client/HttpClient;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpTimeout;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpTimeout;

    iput-object p2, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 0
    new-instance v0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;

    iget-object v1, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpTimeout;

    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;-><init>(Lio/ktor/client/plugins/HttpTimeout;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/client/plugins/Sender;

    check-cast p2, Lio/ktor/client/request/HttpRequestBuilder;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->invoke(Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 144
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/Sender;

    iget-object v1, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpRequestBuilder;

    .line 145
    invoke-virtual {v1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/http/URLBuilder;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v4

    invoke-static {v4}, Lio/ktor/http/URLProtocolKt;->isWebsocket(Lio/ktor/http/URLProtocol;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_b

    .line 146
    invoke-virtual {v1}, Lio/ktor/client/request/HttpRequestBuilder;->getBody()Ljava/lang/Object;

    .line 148
    sget-object v3, Lio/ktor/client/plugins/HttpTimeout;->Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    invoke-virtual {v1, v3}, Lio/ktor/client/request/HttpRequestBuilder;->getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    if-nez v4, :cond_3

    iget-object v6, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpTimeout;

    .line 149
    invoke-static {v6}, Lio/ktor/client/plugins/HttpTimeout;->access$hasNotNullTimeouts(Lio/ktor/client/plugins/HttpTimeout;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 150
    new-instance v4, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    invoke-virtual {v1, v3, v4}, Lio/ktor/client/request/HttpRequestBuilder;->setCapability(Lio/ktor/client/engine/HttpClientEngineCapability;Ljava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_9

    iget-object v3, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpTimeout;

    iget-object v6, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    .line 155
    invoke-virtual {v4}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getConnectTimeoutMillis()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-static {v3}, Lio/ktor/client/plugins/HttpTimeout;->access$getConnectTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;

    move-result-object v7

    :cond_4
    invoke-virtual {v4, v7}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setConnectTimeoutMillis(Ljava/lang/Long;)V

    .line 156
    invoke-virtual {v4}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getSocketTimeoutMillis()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {v3}, Lio/ktor/client/plugins/HttpTimeout;->access$getSocketTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;

    move-result-object v7

    :cond_5
    invoke-virtual {v4, v7}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setSocketTimeoutMillis(Ljava/lang/Long;)V

    .line 157
    invoke-virtual {v4}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getRequestTimeoutMillis()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-static {v3}, Lio/ktor/client/plugins/HttpTimeout;->access$getRequestTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;

    move-result-object v7

    :cond_6
    invoke-virtual {v4, v7}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setRequestTimeoutMillis(Ljava/lang/Long;)V

    .line 159
    invoke-virtual {v4}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getRequestTimeoutMillis()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {v3}, Lio/ktor/client/plugins/HttpTimeout;->access$getRequestTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_9

    const-wide v7, 0x7fffffffffffffffL

    .line 160
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-nez v3, :cond_8

    goto :goto_0

    .line 162
    :cond_8
    invoke-virtual {v1}, Lio/ktor/client/request/HttpRequestBuilder;->getExecutionContext()Lkotlinx/coroutines/Job;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 163
    new-instance v9, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1$1$killer$1;

    invoke-direct {v9, v4, v1, v3, v5}, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1$1$killer$1;-><init>(Ljava/lang/Long;Lio/ktor/client/request/HttpRequestBuilder;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v3

    .line 170
    invoke-virtual {v1}, Lio/ktor/client/request/HttpRequestBuilder;->getExecutionContext()Lkotlinx/coroutines/Job;

    move-result-object v4

    new-instance v6, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1$1$1;

    invoke-direct {v6, v3}, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1$1$1;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {v4, v6}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_9
    :goto_0
    iput-object v5, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->label:I

    .line 174
    invoke-interface {p1, v1, p0}, Lio/ktor/client/plugins/Sender;->execute(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_1
    return-object p1

    :cond_b
    iput-object v5, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/plugins/HttpTimeout$Plugin$install$1;->label:I

    .line 146
    invoke-interface {p1, v1, p0}, Lio/ktor/client/plugins/Sender;->execute(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_c
    :goto_2
    return-object p1
.end method
