.class public final Landroidx/compose/animation/core/FloatSpringSpec;
.super Ljava/lang/Object;
.source "FloatAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# instance fields
.field private final dampingRatio:F

.field private final spring:Landroidx/compose/animation/core/SpringSimulation;

.field private final stiffness:F

.field private final visibilityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/FloatSpringSpec;->dampingRatio:F

    iput p2, p0, Landroidx/compose/animation/core/FloatSpringSpec;->stiffness:F

    iput p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    .line 137
    new-instance p3, Landroidx/compose/animation/core/SpringSimulation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p3, v0}, Landroidx/compose/animation/core/SpringSimulation;-><init>(F)V

    .line 138
    invoke-virtual {p3, p1}, Landroidx/compose/animation/core/SpringSimulation;->setDampingRatio(F)V

    .line 139
    invoke-virtual {p3, p2}, Landroidx/compose/animation/core/SpringSimulation;->setStiffness(F)V

    iput-object p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const p2, 0x44bb8000    # 1500.0f

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const p3, 0x3c23d70a    # 0.01f

    .line 131
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public getDurationNanos(FFF)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 181
    invoke-virtual {v0}, Landroidx/compose/animation/core/SpringSimulation;->getStiffness()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 182
    invoke-virtual {v1}, Landroidx/compose/animation/core/SpringSimulation;->getDampingRatio()F

    move-result v1

    sub-float/2addr p1, p2

    iget p2, p0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    div-float/2addr p1, p2

    div-float/2addr p3, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 180
    invoke-static {v0, v1, p3, p1, p2}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateAnimationDurationMillis(FFFFF)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public getEndVelocity(FFF)F
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getValueFromNanos(JFFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 149
    div-long/2addr p1, v0

    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 150
    invoke-virtual {v0, p4}, Landroidx/compose/animation/core/SpringSimulation;->setFinalPosition(F)V

    iget-object p4, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 151
    invoke-virtual {p4, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->updateValues-IJZedt4$animation_core_release(FFJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/animation/core/Motion;->getValue-impl(J)F

    move-result p1

    return p1
.end method

.method public getVelocityFromNanos(JFFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 162
    div-long/2addr p1, v0

    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 163
    invoke-virtual {v0, p4}, Landroidx/compose/animation/core/SpringSimulation;->setFinalPosition(F)V

    iget-object p4, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 164
    invoke-virtual {p4, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->updateValues-IJZedt4$animation_core_release(FFJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/animation/core/Motion;->getVelocity-impl(J)F

    move-result p1

    return p1
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/animation/core/FloatAnimationSpec$-CC;->$default$vectorize(Landroidx/compose/animation/core/FloatAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object p1

    return-object p1
.end method

.method public synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/animation/core/FloatAnimationSpec$-CC;->$default$vectorize(Landroidx/compose/animation/core/FloatAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;

    move-result-object p1

    return-object p1
.end method
