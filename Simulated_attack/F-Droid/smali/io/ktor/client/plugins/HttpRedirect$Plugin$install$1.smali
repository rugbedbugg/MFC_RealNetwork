.class final Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpRedirect.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRedirect$Plugin;->install(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/HttpRedirect;

.field final synthetic $scope:Lio/ktor/client/HttpClient;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpRedirect;

    iput-object p2, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 0
    new-instance v0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;

    iget-object v1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpRedirect;

    iget-object v2, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;-><init>(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/client/plugins/Sender;

    check-cast p2, Lio/ktor/client/request/HttpRequestBuilder;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->invoke(Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpRequestBuilder;

    iget-object v3, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/client/plugins/Sender;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v4, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/Sender;

    iget-object v1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/client/request/HttpRequestBuilder;

    iput-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->label:I

    .line 64
    invoke-interface {p1, v1, p0}, Lio/ktor/client/plugins/Sender;->execute(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v4, p1

    move-object v5, v1

    move-object p1, v3

    .line 63
    :goto_0
    move-object v6, p1

    check-cast v6, Lio/ktor/client/call/HttpClientCall;

    iget-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpRedirect;

    .line 65
    invoke-static {p1}, Lio/ktor/client/plugins/HttpRedirect;->access$getCheckHttpMethod$p(Lio/ktor/client/plugins/HttpRedirect;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lio/ktor/client/plugins/HttpRedirectKt;->access$getALLOWED_FOR_REDIRECT$p()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v6}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/client/request/HttpRequest;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v6

    .line 69
    :cond_4
    sget-object v3, Lio/ktor/client/plugins/HttpRedirect;->Plugin:Lio/ktor/client/plugins/HttpRedirect$Plugin;

    iget-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/HttpRedirect;

    invoke-static {p1}, Lio/ktor/client/plugins/HttpRedirect;->access$getAllowHttpsDowngrade$p(Lio/ktor/client/plugins/HttpRedirect;)Z

    move-result v7

    iget-object v8, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;->label:I

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->access$handleCall(Lio/ktor/client/plugins/HttpRedirect$Plugin;Lio/ktor/client/plugins/Sender;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    return-object p1
.end method
