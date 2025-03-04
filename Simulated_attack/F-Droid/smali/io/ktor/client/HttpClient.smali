.class public final Lio/ktor/client/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Ljava/io/Closeable;


# static fields
.field private static final synthetic closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final attributes:Lio/ktor/util/Attributes;

.field private final clientJob:Lkotlinx/coroutines/CompletableJob;

.field private volatile synthetic closed:I

.field private final config:Lio/ktor/client/HttpClientConfig;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final engine:Lio/ktor/client/engine/HttpClientEngine;

.field private final engineConfig:Lio/ktor/client/engine/HttpClientEngineConfig;

.field private manageEngine:Z

.field private final monitor:Lio/ktor/events/Events;

.field private final receivePipeline:Lio/ktor/client/statement/HttpReceivePipeline;

.field private final requestPipeline:Lio/ktor/client/request/HttpRequestPipeline;

.field private final responsePipeline:Lio/ktor/client/statement/HttpResponsePipeline;

.field private final sendPipeline:Lio/ktor/client/request/HttpSendPipeline;

.field private final userConfig:Lio/ktor/client/HttpClientConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-class v0, Lio/ktor/client/HttpClient;

    const-string v1, "closed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/client/HttpClient;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;)V
    .locals 5

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/HttpClient;->engine:Lio/ktor/client/engine/HttpClientEngine;

    iput-object p2, p0, Lio/ktor/client/HttpClient;->userConfig:Lio/ktor/client/HttpClientConfig;

    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/client/HttpClient;->closed:I

    .line 90
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/HttpClient;->clientJob:Lkotlinx/coroutines/CompletableJob;

    .line 92
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/client/HttpClient;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 97
    new-instance v1, Lio/ktor/client/request/HttpRequestPipeline;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->getDevelopmentMode()Z

    move-result v2

    invoke-direct {v1, v2}, Lio/ktor/client/request/HttpRequestPipeline;-><init>(Z)V

    iput-object v1, p0, Lio/ktor/client/HttpClient;->requestPipeline:Lio/ktor/client/request/HttpRequestPipeline;

    .line 102
    new-instance v1, Lio/ktor/client/statement/HttpResponsePipeline;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->getDevelopmentMode()Z

    move-result v2

    invoke-direct {v1, v2}, Lio/ktor/client/statement/HttpResponsePipeline;-><init>(Z)V

    iput-object v1, p0, Lio/ktor/client/HttpClient;->responsePipeline:Lio/ktor/client/statement/HttpResponsePipeline;

    .line 107
    new-instance v2, Lio/ktor/client/request/HttpSendPipeline;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->getDevelopmentMode()Z

    move-result v3

    invoke-direct {v2, v3}, Lio/ktor/client/request/HttpSendPipeline;-><init>(Z)V

    iput-object v2, p0, Lio/ktor/client/HttpClient;->sendPipeline:Lio/ktor/client/request/HttpSendPipeline;

    .line 112
    new-instance v3, Lio/ktor/client/statement/HttpReceivePipeline;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->getDevelopmentMode()Z

    move-result v4

    invoke-direct {v3, v4}, Lio/ktor/client/statement/HttpReceivePipeline;-><init>(Z)V

    iput-object v3, p0, Lio/ktor/client/HttpClient;->receivePipeline:Lio/ktor/client/statement/HttpReceivePipeline;

    const/4 v3, 0x1

    .line 117
    invoke-static {v3}, Lio/ktor/util/AttributesJvmKt;->Attributes(Z)Lio/ktor/util/Attributes;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/HttpClient;->attributes:Lio/ktor/util/Attributes;

    .line 122
    invoke-interface {p1}, Lio/ktor/client/engine/HttpClientEngine;->getConfig()Lio/ktor/client/engine/HttpClientEngineConfig;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/HttpClient;->engineConfig:Lio/ktor/client/engine/HttpClientEngineConfig;

    .line 127
    new-instance v3, Lio/ktor/events/Events;

    invoke-direct {v3}, Lio/ktor/events/Events;-><init>()V

    iput-object v3, p0, Lio/ktor/client/HttpClient;->monitor:Lio/ktor/events/Events;

    .line 129
    new-instance v3, Lio/ktor/client/HttpClientConfig;

    invoke-direct {v3}, Lio/ktor/client/HttpClientConfig;-><init>()V

    iput-object v3, p0, Lio/ktor/client/HttpClient;->config:Lio/ktor/client/HttpClientConfig;

    iget-boolean v4, p0, Lio/ktor/client/HttpClient;->manageEngine:Z

    if-eqz v4, :cond_0

    .line 133
    new-instance v4, Lio/ktor/client/HttpClient$1;

    invoke-direct {v4, p0}, Lio/ktor/client/HttpClient$1;-><init>(Lio/ktor/client/HttpClient;)V

    invoke-interface {v0, v4}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 140
    :cond_0
    invoke-interface {p1, p0}, Lio/ktor/client/engine/HttpClientEngine;->install(Lio/ktor/client/HttpClient;)V

    .line 142
    sget-object p1, Lio/ktor/client/request/HttpSendPipeline;->Phases:Lio/ktor/client/request/HttpSendPipeline$Phases;

    invoke-virtual {p1}, Lio/ktor/client/request/HttpSendPipeline$Phases;->getReceive()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p1

    new-instance v0, Lio/ktor/client/HttpClient$2;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lio/ktor/client/HttpClient$2;-><init>(Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, p1, v0}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 150
    sget-object p1, Lio/ktor/client/plugins/HttpRequestLifecycle;->Plugin:Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;

    const/4 v0, 0x2

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->install$default(Lio/ktor/client/HttpClientConfig;Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 151
    sget-object p1, Lio/ktor/client/plugins/BodyProgress;->Plugin:Lio/ktor/client/plugins/BodyProgress$Plugin;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->install$default(Lio/ktor/client/HttpClientConfig;Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 153
    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->getUseDefaultTransformers()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DefaultTransformers"

    sget-object v2, Lio/ktor/client/HttpClient$3$1;->INSTANCE:Lio/ktor/client/HttpClient$3$1;

    .line 154
    invoke-virtual {v3, p1, v2}, Lio/ktor/client/HttpClientConfig;->install(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 157
    :cond_1
    sget-object p1, Lio/ktor/client/plugins/HttpSend;->Plugin:Lio/ktor/client/plugins/HttpSend$Plugin;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->install$default(Lio/ktor/client/HttpClientConfig;Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 158
    sget-object p1, Lio/ktor/client/plugins/HttpCallValidator;->Companion:Lio/ktor/client/plugins/HttpCallValidator$Companion;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->install$default(Lio/ktor/client/HttpClientConfig;Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 160
    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->getFollowRedirects()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    sget-object p1, Lio/ktor/client/plugins/HttpRedirect;->Plugin:Lio/ktor/client/plugins/HttpRedirect$Plugin;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->install$default(Lio/ktor/client/HttpClientConfig;Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 164
    :cond_2
    invoke-virtual {v3, p2}, Lio/ktor/client/HttpClientConfig;->plusAssign(Lio/ktor/client/HttpClientConfig;)V

    .line 166
    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->getUseDefaultTransformers()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 167
    sget-object p1, Lio/ktor/client/plugins/HttpPlainText;->Plugin:Lio/ktor/client/plugins/HttpPlainText$Plugin;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->install$default(Lio/ktor/client/HttpClientConfig;Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 170
    :cond_3
    invoke-static {v3}, Lio/ktor/client/plugins/DefaultResponseValidationKt;->addDefaultResponseValidation(Lio/ktor/client/HttpClientConfig;)V

    .line 172
    invoke-virtual {v3, p0}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/HttpClient;)V

    .line 175
    sget-object p1, Lio/ktor/client/statement/HttpResponsePipeline;->Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponsePipeline$Phases;->getReceive()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object p1

    new-instance p2, Lio/ktor/client/HttpClient$4;

    invoke-direct {p2, p0, v4}, Lio/ktor/client/HttpClient$4;-><init>(Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, p1, p2}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;Z)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lio/ktor/client/HttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;)V

    iput-boolean p3, p0, Lio/ktor/client/HttpClient;->manageEngine:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    sget-object v0, Lio/ktor/client/HttpClient;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 218
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->attributes:Lio/ktor/util/Attributes;

    .line 221
    invoke-static {}, Lio/ktor/client/plugins/HttpClientPluginKt;->getPLUGIN_INSTALLED_LIST()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->get(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/util/Attributes;

    .line 222
    invoke-interface {v0}, Lio/ktor/util/Attributes;->getAllKeys()Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/util/AttributeKey;

    const-string v3, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    .line 224
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lio/ktor/util/Attributes;->get(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v2

    .line 226
    instance-of v3, v2, Ljava/io/Closeable;

    if-eqz v3, :cond_1

    .line 227
    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/ktor/client/HttpClient;->clientJob:Lkotlinx/coroutines/CompletableJob;

    .line 231
    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iget-boolean v0, p0, Lio/ktor/client/HttpClient;->manageEngine:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/ktor/client/HttpClient;->engine:Lio/ktor/client/engine/HttpClientEngine;

    .line 233
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_3
    return-void
.end method

.method public final execute$ktor_client_core(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lio/ktor/client/HttpClient$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/client/HttpClient$execute$1;

    iget v1, v0, Lio/ktor/client/HttpClient$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/HttpClient$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/HttpClient$execute$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/HttpClient$execute$1;-><init>(Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/client/HttpClient$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 188
    iget v2, v0, Lio/ktor/client/HttpClient$execute$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lio/ktor/client/HttpClient;->monitor:Lio/ktor/events/Events;

    .line 189
    invoke-static {}, Lio/ktor/client/utils/ClientEventsKt;->getHttpRequestCreated()Lio/ktor/events/EventDefinition;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V

    iget-object p2, p0, Lio/ktor/client/HttpClient;->requestPipeline:Lio/ktor/client/request/HttpRequestPipeline;

    .line 191
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getBody()Ljava/lang/Object;

    move-result-object v2

    iput v3, v0, Lio/ktor/client/HttpClient$execute$1;->label:I

    invoke-virtual {p2, p1, v2, v0}, Lio/ktor/util/pipeline/Pipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "null cannot be cast to non-null type io.ktor.client.call.HttpClientCall"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/ktor/client/call/HttpClientCall;

    return-object p2
.end method

.method public final getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->attributes:Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public final getConfig$ktor_client_core()Lio/ktor/client/HttpClientConfig;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->config:Lio/ktor/client/HttpClientConfig;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getEngine()Lio/ktor/client/engine/HttpClientEngine;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->engine:Lio/ktor/client/engine/HttpClientEngine;

    return-object v0
.end method

.method public final getMonitor()Lio/ktor/events/Events;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->monitor:Lio/ktor/events/Events;

    return-object v0
.end method

.method public final getReceivePipeline()Lio/ktor/client/statement/HttpReceivePipeline;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->receivePipeline:Lio/ktor/client/statement/HttpReceivePipeline;

    return-object v0
.end method

.method public final getRequestPipeline()Lio/ktor/client/request/HttpRequestPipeline;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->requestPipeline:Lio/ktor/client/request/HttpRequestPipeline;

    return-object v0
.end method

.method public final getResponsePipeline()Lio/ktor/client/statement/HttpResponsePipeline;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->responsePipeline:Lio/ktor/client/statement/HttpResponsePipeline;

    return-object v0
.end method

.method public final getSendPipeline()Lio/ktor/client/request/HttpSendPipeline;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->sendPipeline:Lio/ktor/client/request/HttpSendPipeline;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpClient["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/HttpClient;->engine:Lio/ktor/client/engine/HttpClientEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
