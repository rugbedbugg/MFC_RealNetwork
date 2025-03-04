.class final Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultTransform.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformKt;->defaultTransformers(Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;

    invoke-direct {v0, p3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    iget-object v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->L$1:Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v3

    sget-object v4, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getAccept()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/ktor/util/StringValuesBuilderImpl;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 30
    invoke-virtual {p1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getAccept()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*/*"

    invoke-virtual {v3, v5, v6}, Lio/ktor/util/StringValuesBuilderImpl;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_2
    invoke-virtual {p1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/http/HttpMessageBuilder;

    invoke-static {v3}, Lio/ktor/http/HttpMessagePropertiesKt;->contentType(Lio/ktor/http/HttpMessageBuilder;)Lio/ktor/http/ContentType;

    move-result-object v3

    .line 35
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 36
    new-instance v5, Lio/ktor/http/content/TextContent;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    if-nez v3, :cond_3

    sget-object v3, Lio/ktor/http/ContentType$Text;->INSTANCE:Lio/ktor/http/ContentType$Text;

    invoke-virtual {v3}, Lio/ktor/http/ContentType$Text;->getPlain()Lio/ktor/http/ContentType;

    move-result-object v3

    :cond_3
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lio/ktor/http/content/TextContent;-><init>(Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 39
    :cond_4
    instance-of v5, v1, [B

    if-eqz v5, :cond_5

    new-instance v5, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;

    invoke-direct {v5, v3, v1}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;-><init>(Lio/ktor/http/ContentType;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_5
    instance-of v5, v1, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v5, :cond_6

    new-instance v5, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$2;

    invoke-direct {v5, p1, v3, v1}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$2;-><init>(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/http/ContentType;Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_6
    instance-of v5, v1, Lio/ktor/http/content/OutgoingContent;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, Lio/ktor/http/content/OutgoingContent;

    goto :goto_0

    .line 52
    :cond_7
    invoke-virtual {p1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-static {v3, v5, v1}, Lio/ktor/client/plugins/DefaultTransformersJvmKt;->platformRequestDefaultTransform(Lio/ktor/http/ContentType;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;

    move-result-object v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v5, :cond_8

    .line 54
    invoke-virtual {v5}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v6

    goto :goto_1

    :cond_8
    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_9

    .line 55
    invoke-virtual {p1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-virtual {v6}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lio/ktor/util/StringValuesBuilderImpl;->remove(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lio/ktor/client/plugins/DefaultTransformKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transformed with default transformers request body for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iput-object v3, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->label:I

    .line 57
    invoke-virtual {p1, v5, p0}, Lio/ktor/util/pipeline/PipelineContext;->proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 59
    :cond_9
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
