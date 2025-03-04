.class public final Lio/ktor/client/statement/HttpResponsePipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/statement/HttpResponsePipeline$Phases;
    }
.end annotation


# static fields
.field private static final After:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Parse:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

.field private static final Receive:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final State:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Transform:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field private final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/statement/HttpResponsePipeline$Phases;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    .line 28
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Receive"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    .line 33
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Parse"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    .line 38
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Transform"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    .line 43
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "State"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    .line 48
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "After"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v1, 0x0

    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    .line 17
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    iput-boolean p1, p0, Lio/ktor/client/statement/HttpResponsePipeline;->developmentMode:Z

    return-void
.end method

.method public static final synthetic access$getParse$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getTransform$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/client/statement/HttpResponsePipeline;->developmentMode:Z

    return v0
.end method
