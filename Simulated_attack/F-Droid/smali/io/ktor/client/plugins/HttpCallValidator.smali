.class public final Lio/ktor/client/plugins/HttpCallValidator;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpCallValidator$Companion;,
        Lio/ktor/client/plugins/HttpCallValidator$Config;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/plugins/HttpCallValidator$Companion;

.field private static final key:Lio/ktor/util/AttributeKey;


# instance fields
.field private final callExceptionHandlers:Ljava/util/List;

.field private final expectSuccess:Z

.field private final responseValidators:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpCallValidator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpCallValidator;->Companion:Lio/ktor/client/plugins/HttpCallValidator$Companion;

    .line 113
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "HttpResponseValidator"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpCallValidator;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1

    const-string v0, "responseValidators"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callExceptionHandlers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator;->responseValidators:Ljava/util/List;

    iput-object p2, p0, Lio/ktor/client/plugins/HttpCallValidator;->callExceptionHandlers:Ljava/util/List;

    iput-boolean p3, p0, Lio/ktor/client/plugins/HttpCallValidator;->expectSuccess:Z

    return-void
.end method

.method public static final synthetic access$getExpectSuccess$p(Lio/ktor/client/plugins/HttpCallValidator;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpCallValidator;->expectSuccess:Z

    return p0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/HttpCallValidator;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$processException(Lio/ktor/client/plugins/HttpCallValidator;Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpCallValidator;->processException(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$validateResponse(Lio/ktor/client/plugins/HttpCallValidator;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/HttpCallValidator;->validateResponse(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final processException(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lio/ktor/client/plugins/HttpCallValidator$processException$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;

    iget v1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/HttpCallValidator$processException$1;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 54
    iget v1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->label:I

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    if-eq v1, p1, :cond_1

    const/4 p1, 0x2

    if-ne v1, p1, :cond_2

    :cond_1
    iget-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/client/request/HttpRequest;

    iget-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$processException$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Lio/ktor/client/plugins/HttpCallValidatorKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for request "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator;->callExceptionHandlers:Ljava/util/List;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_1

    .line 62
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final validateResponse(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;

    iget v1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 49
    iget v2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/client/statement/HttpResponse;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lio/ktor/client/plugins/HttpCallValidatorKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validating response for request "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/client/request/HttpRequest;->getUrl()Lio/ktor/http/Url;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object p2, p0, Lio/ktor/client/plugins/HttpCallValidator;->responseValidators:Ljava/util/List;

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 51
    iput-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/plugins/HttpCallValidator$validateResponse$1;->label:I

    invoke-interface {v2, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 52
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
