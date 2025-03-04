.class public final Landroidx/compose/animation/core/AnimationScope;
.super Ljava/lang/Object;
.source "AnimationState.kt"


# instance fields
.field private finishedTimeNanos:J

.field private final isRunning$delegate:Landroidx/compose/runtime/MutableState;

.field private lastFrameTimeNanos:J

.field private final onCancel:Lkotlin/jvm/functions/Function0;

.field private final startTimeNanos:J

.field private final targetValue:Ljava/lang/Object;

.field private final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

.field private final value$delegate:Landroidx/compose/runtime/MutableState;

.field private velocityVector:Landroidx/compose/animation/core/AnimationVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JZLkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "typeConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialVelocityVector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/animation/core/AnimationScope;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object p6, p0, Landroidx/compose/animation/core/AnimationScope;->targetValue:Ljava/lang/Object;

    iput-wide p7, p0, Landroidx/compose/animation/core/AnimationScope;->startTimeNanos:J

    iput-object p10, p0, Landroidx/compose/animation/core/AnimationScope;->onCancel:Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x0

    const/4 p6, 0x2

    .line 147
    invoke-static {p1, p2, p6, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 152
    invoke-static {p3}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    iput-wide p4, p0, Landroidx/compose/animation/core/AnimationScope;->lastFrameTimeNanos:J

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p0, Landroidx/compose/animation/core/AnimationScope;->finishedTimeNanos:J

    .line 181
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p2, p6, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final cancelAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/AnimationScope;->setRunning$animation_core_release(Z)V

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->onCancel:Lkotlin/jvm/functions/Function0;

    .line 196
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final getFinishedTimeNanos()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationScope;->finishedTimeNanos:J

    return-wide v0
.end method

.method public final getLastFrameTimeNanos()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationScope;->lastFrameTimeNanos:J

    return-wide v0
.end method

.method public final getStartTimeNanos()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationScope;->startTimeNanos:J

    return-wide v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getVelocity()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 188
    invoke-interface {v0}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertFromVector()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getVelocityVector()Landroidx/compose/animation/core/AnimationVector;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final setFinishedTimeNanos$animation_core_release(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/animation/core/AnimationScope;->finishedTimeNanos:J

    return-void
.end method

.method public final setLastFrameTimeNanos$animation_core_release(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/animation/core/AnimationScope;->lastFrameTimeNanos:J

    return-void
.end method

.method public final setRunning$animation_core_release(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 181
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValue$animation_core_release(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVelocityVector$animation_core_release(Landroidx/compose/animation/core/AnimationVector;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    return-void
.end method
