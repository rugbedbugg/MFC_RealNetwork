.class public final Lio/ktor/client/plugins/UserAgent$Plugin;
.super Ljava/lang/Object;
.source "UserAgent.kt"

# interfaces
.implements Lio/ktor/client/plugins/HttpClientPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/UserAgent;
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
    invoke-direct {p0}, Lio/ktor/client/plugins/UserAgent$Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 26
    invoke-static {}, Lio/ktor/client/plugins/UserAgent;->access$getKey$cp()Lio/ktor/util/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public install(Lio/ktor/client/plugins/UserAgent;Lio/ktor/client/HttpClient;)V
    .locals 3

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->getRequestPipeline()Lio/ktor/client/request/HttpRequestPipeline;

    move-result-object p2

    sget-object v0, Lio/ktor/client/request/HttpRequestPipeline;->Phases:Lio/ktor/client/request/HttpRequestPipeline$Phases;

    invoke-virtual {v0}, Lio/ktor/client/request/HttpRequestPipeline$Phases;->getState()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;-><init>(Lio/ktor/client/plugins/UserAgent;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v0, v1}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public bridge synthetic install(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 25
    check-cast p1, Lio/ktor/client/plugins/UserAgent;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/UserAgent$Plugin;->install(Lio/ktor/client/plugins/UserAgent;Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method public prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/UserAgent;
    .locals 4

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lio/ktor/client/plugins/UserAgent;

    new-instance v1, Lio/ktor/client/plugins/UserAgent$Config;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lio/ktor/client/plugins/UserAgent$Config;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lio/ktor/client/plugins/UserAgent$Config;->getAgent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Lio/ktor/client/plugins/UserAgent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic prepare(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/UserAgent$Plugin;->prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/UserAgent;

    move-result-object p1

    return-object p1
.end method
