.class public final Lio/ktor/client/plugins/BodyProgress;
.super Ljava/lang/Object;
.source "BodyProgress.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/BodyProgress$Plugin;
    }
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/BodyProgress$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/BodyProgress$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/BodyProgress$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/BodyProgress;->Plugin:Lio/ktor/client/plugins/BodyProgress$Plugin;

    .line 50
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "BodyProgress"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/BodyProgress;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/plugins/BodyProgress;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$handle(Lio/ktor/client/plugins/BodyProgress;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/BodyProgress;->handle(Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method private final handle(Lio/ktor/client/HttpClient;)V
    .locals 4

    .line 31
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "ObservableContent"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->getRequestPipeline()Lio/ktor/client/request/HttpRequestPipeline;

    move-result-object v1

    sget-object v2, Lio/ktor/client/request/HttpRequestPipeline;->Phases:Lio/ktor/client/request/HttpRequestPipeline$Phases;

    invoke-virtual {v2}, Lio/ktor/client/request/HttpRequestPipeline$Phases;->getRender()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/ktor/util/pipeline/Pipeline;->insertPhaseAfter(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 33
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->getRequestPipeline()Lio/ktor/client/request/HttpRequestPipeline;

    move-result-object v1

    new-instance v2, Lio/ktor/client/plugins/BodyProgress$handle$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/ktor/client/plugins/BodyProgress$handle$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v0, v2}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 41
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->getReceivePipeline()Lio/ktor/client/statement/HttpReceivePipeline;

    move-result-object p1

    sget-object v0, Lio/ktor/client/statement/HttpReceivePipeline;->Phases:Lio/ktor/client/statement/HttpReceivePipeline$Phases;

    invoke-virtual {v0}, Lio/ktor/client/statement/HttpReceivePipeline$Phases;->getAfter()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/client/plugins/BodyProgress$handle$2;

    invoke-direct {v1, v3}, Lio/ktor/client/plugins/BodyProgress$handle$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0, v1}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
