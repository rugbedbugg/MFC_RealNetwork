.class public final Lio/ktor/util/pipeline/PipelinePhaseRelation$After;
.super Lio/ktor/util/pipeline/PipelinePhaseRelation;
.source "PipelinePhaseRelation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/pipeline/PipelinePhaseRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "After"
.end annotation


# instance fields
.field private final relativeTo:Lio/ktor/util/pipeline/PipelinePhase;


# direct methods
.method public constructor <init>(Lio/ktor/util/pipeline/PipelinePhase;)V
    .locals 1

    const-string v0, "relativeTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/PipelinePhaseRelation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;->relativeTo:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method


# virtual methods
.method public final getRelativeTo()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/util/pipeline/PipelinePhaseRelation$After;->relativeTo:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method
