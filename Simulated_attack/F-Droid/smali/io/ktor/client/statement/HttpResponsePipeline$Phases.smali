.class public final Lio/ktor/client/statement/HttpResponsePipeline$Phases;
.super Ljava/lang/Object;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/statement/HttpResponsePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phases"
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
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponsePipeline$Phases;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParse()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 33
    invoke-static {}, Lio/ktor/client/statement/HttpResponsePipeline;->access$getParse$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    return-object v0
.end method

.method public final getReceive()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 28
    invoke-static {}, Lio/ktor/client/statement/HttpResponsePipeline;->access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    return-object v0
.end method

.method public final getTransform()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 38
    invoke-static {}, Lio/ktor/client/statement/HttpResponsePipeline;->access$getTransform$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    return-object v0
.end method
