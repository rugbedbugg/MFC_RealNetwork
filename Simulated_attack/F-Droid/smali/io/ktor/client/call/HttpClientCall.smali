.class public Lio/ktor/client/call/HttpClientCall;
.super Ljava/lang/Object;
.source "HttpClientCall.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/call/HttpClientCall$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/call/HttpClientCall$Companion;

.field private static final CustomResponse:Lio/ktor/util/AttributeKey;

.field private static final synthetic received$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final allowDoubleReceive:Z

.field private final client:Lio/ktor/client/HttpClient;

.field private volatile synthetic received:I

.field protected request:Lio/ktor/client/request/HttpRequest;

.field protected response:Lio/ktor/client/statement/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/call/HttpClientCall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/call/HttpClientCall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/call/HttpClientCall;->Companion:Lio/ktor/client/call/HttpClientCall$Companion;

    .line 138
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "CustomResponse"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/call/HttpClientCall;->CustomResponse:Lio/ktor/util/AttributeKey;

    const-class v0, Lio/ktor/client/call/HttpClientCall;

    const-string v1, "received"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/client/call/HttpClientCall;->received$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/call/HttpClientCall;->client:Lio/ktor/client/HttpClient;

    const/4 p1, 0x0

    iput p1, p0, Lio/ktor/client/call/HttpClientCall;->received:I

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/HttpClient;Lio/ktor/client/request/HttpRequestData;Lio/ktor/client/request/HttpResponseData;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lio/ktor/client/call/HttpClientCall;-><init>(Lio/ktor/client/HttpClient;)V

    .line 56
    new-instance p1, Lio/ktor/client/request/DefaultHttpRequest;

    invoke-direct {p1, p0, p2}, Lio/ktor/client/request/DefaultHttpRequest;-><init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpRequestData;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->setRequest(Lio/ktor/client/request/HttpRequest;)V

    .line 57
    new-instance p1, Lio/ktor/client/statement/DefaultHttpResponse;

    invoke-direct {p1, p0, p3}, Lio/ktor/client/statement/DefaultHttpResponse;-><init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpResponseData;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->setResponse(Lio/ktor/client/statement/HttpResponse;)V

    .line 59
    invoke-virtual {p3}, Lio/ktor/client/request/HttpResponseData;->getBody()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lio/ktor/utils/io/ByteReadChannel;

    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object p1

    sget-object p2, Lio/ktor/client/call/HttpClientCall;->CustomResponse:Lio/ktor/util/AttributeKey;

    invoke-virtual {p3}, Lio/ktor/client/request/HttpResponseData;->getBody()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic getResponseContent$suspendImpl(Lio/ktor/client/call/HttpClientCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getContent()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bodyNullable(Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;

    iget v1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;-><init>(Lio/ktor/client/call/HttpClientCall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/util/reflect/TypeInfo;

    iget-object v0, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/util/reflect/TypeInfo;

    iget-object v2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/call/HttpClientCall;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v2

    goto/16 :goto_6

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    :try_start_2
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p2

    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {p2, v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->instanceOf(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p2

    invoke-static {p2}, Lio/ktor/client/statement/HttpResponseKt;->complete(Lio/ktor/client/statement/HttpResponse;)V

    return-object p1

    :catchall_2
    move-exception p1

    move-object v0, p0

    goto/16 :goto_6

    .line 81
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getAllowDoubleReceive()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lio/ktor/client/call/HttpClientCall;->received$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 82
    :cond_5
    new-instance p1, Lio/ktor/client/call/DoubleReceiveException;

    invoke-direct {p1, p0}, Lio/ktor/client/call/DoubleReceiveException;-><init>(Lio/ktor/client/call/HttpClientCall;)V

    throw p1

    .line 86
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object p2

    sget-object v2, Lio/ktor/client/call/HttpClientCall;->CustomResponse:Lio/ktor/util/AttributeKey;

    invoke-interface {p2, v2}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    iput-object p0, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->label:I

    invoke-virtual {p0, v0}, Lio/ktor/client/call/HttpClientCall;->getResponseContent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    .line 88
    :goto_2
    :try_start_4
    new-instance v5, Lio/ktor/client/statement/HttpResponseContainer;

    invoke-direct {v5, p1, p2}, Lio/ktor/client/statement/HttpResponseContainer;-><init>(Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;)V

    .line 89
    iget-object p2, v2, Lio/ktor/client/call/HttpClientCall;->client:Lio/ktor/client/HttpClient;

    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->getResponsePipeline()Lio/ktor/client/statement/HttpResponsePipeline;

    move-result-object p2

    iput-object v2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->label:I

    invoke-virtual {p2, v2, v5, v0}, Lio/ktor/util/pipeline/Pipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v0, v2

    :goto_3
    :try_start_5
    check-cast p2, Lio/ktor/client/statement/HttpResponseContainer;

    invoke-virtual {p2}, Lio/ktor/client/statement/HttpResponseContainer;->getResponse()Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_b

    .line 91
    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p2, v1}, Lio/ktor/util/reflect/TypeInfoJvmKt;->instanceOf(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    .line 92
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 93
    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p1

    .line 94
    new-instance v1, Lio/ktor/client/call/NoTransformationFoundException;

    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lio/ktor/client/call/NoTransformationFoundException;-><init>(Lio/ktor/client/statement/HttpResponse;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/client/statement/HttpResponseKt;->complete(Lio/ktor/client/statement/HttpResponse;)V

    return-object p2

    .line 99
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p2

    const-string v1, "Receive failed"

    invoke-static {p2, v1, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 102
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p2

    invoke-static {p2}, Lio/ktor/client/statement/HttpResponseKt;->complete(Lio/ktor/client/statement/HttpResponse;)V

    throw p1
.end method

.method protected getAllowDoubleReceive()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/client/call/HttpClientCall;->allowDoubleReceive:Z

    return v0
.end method

.method public final getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/client/request/HttpRequest;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public final getClient()Lio/ktor/client/HttpClient;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/call/HttpClientCall;->client:Lio/ktor/client/HttpClient;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getRequest()Lio/ktor/client/request/HttpRequest;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/call/HttpClientCall;->request:Lio/ktor/client/request/HttpRequest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "request"

    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponse()Lio/ktor/client/statement/HttpResponse;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/call/HttpClientCall;->response:Lio/ktor/client/statement/HttpResponse;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "response"

    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getResponseContent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lio/ktor/client/call/HttpClientCall;->getResponseContent$suspendImpl(Lio/ktor/client/call/HttpClientCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final setRequest(Lio/ktor/client/request/HttpRequest;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/call/HttpClientCall;->request:Lio/ktor/client/request/HttpRequest;

    return-void
.end method

.method protected final setResponse(Lio/ktor/client/statement/HttpResponse;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/call/HttpClientCall;->response:Lio/ktor/client/statement/HttpResponse;

    return-void
.end method

.method public final setResponse$ktor_client_core(Lio/ktor/client/statement/HttpResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->setResponse(Lio/ktor/client/statement/HttpResponse;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpClientCall["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
