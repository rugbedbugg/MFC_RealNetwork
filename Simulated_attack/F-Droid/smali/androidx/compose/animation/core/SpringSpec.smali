.class public final Landroidx/compose/animation/core/SpringSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FiniteAnimationSpec;


# instance fields
.field private final dampingRatio:F

.field private final stiffness:F

.field private final visibilityThreshold:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iput p2, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    iput-object p3, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    const/4 p3, 0x0

    .line 135
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 145
    instance-of v0, p1, Landroidx/compose/animation/core/SpringSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Landroidx/compose/animation/core/SpringSpec;

    iget v0, p1, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iget v2, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    .line 147
    iget v0, p1, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    iget v2, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    .line 148
    iget-object p1, p1, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getDampingRatio()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    return v0
.end method

.method public final getStiffness()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    return v0
.end method

.method public final getVisibilityThreshold()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SpringSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedSpringSpec;

    move-result-object p1

    return-object p1
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedSpringSpec;
    .locals 4

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroidx/compose/animation/core/VectorizedSpringSpec;

    iget v1, p0, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iget v2, p0, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    iget-object v3, p0, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    invoke-static {p1, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->access$convert(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/animation/core/VectorizedSpringSpec;-><init>(FFLandroidx/compose/animation/core/AnimationVector;)V

    return-object v0
.end method
