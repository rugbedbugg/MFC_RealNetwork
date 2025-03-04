.class public abstract Lio/ktor/client/plugins/DefaultTransformKt;
.super Ljava/lang/Object;
.source "DefaultTransform.kt"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.ktor.client.plugins.defaultTransformers"

    .line 19
    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/DefaultTransformKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final synthetic access$getLOGGER$p()Lorg/slf4j/Logger;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/DefaultTransformKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final defaultTransformers(Lio/ktor/client/HttpClient;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lio/ktor/client/HttpClient;->getRequestPipeline()Lio/ktor/client/request/HttpRequestPipeline;

    move-result-object v0

    sget-object v1, Lio/ktor/client/request/HttpRequestPipeline;->Phases:Lio/ktor/client/request/HttpRequestPipeline$Phases;

    invoke-virtual {v1}, Lio/ktor/client/request/HttpRequestPipeline$Phases;->getRender()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v1

    new-instance v2, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1, v2}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 61
    invoke-virtual {p0}, Lio/ktor/client/HttpClient;->getResponsePipeline()Lio/ktor/client/statement/HttpResponsePipeline;

    move-result-object v0

    sget-object v1, Lio/ktor/client/statement/HttpResponsePipeline;->Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    invoke-virtual {v1}, Lio/ktor/client/statement/HttpResponsePipeline$Phases;->getParse()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v1

    new-instance v2, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;

    invoke-direct {v2, v3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1, v2}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 134
    invoke-static {p0}, Lio/ktor/client/plugins/DefaultTransformersJvmKt;->platformResponseDefaultTransformers(Lio/ktor/client/HttpClient;)V

    return-void
.end method
