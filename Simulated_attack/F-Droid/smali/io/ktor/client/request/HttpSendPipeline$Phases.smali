.class public final Lio/ktor/client/request/HttpSendPipeline$Phases;
.super Ljava/lang/Object;
.source "HttpRequestPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/request/HttpSendPipeline;
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
    invoke-direct {p0}, Lio/ktor/client/request/HttpSendPipeline$Phases;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEngine()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 75
    invoke-static {}, Lio/ktor/client/request/HttpSendPipeline;->access$getEngine$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    return-object v0
.end method

.method public final getReceive()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 80
    invoke-static {}, Lio/ktor/client/request/HttpSendPipeline;->access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    return-object v0
.end method
