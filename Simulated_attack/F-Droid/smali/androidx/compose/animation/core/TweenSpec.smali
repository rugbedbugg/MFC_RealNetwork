.class public final Landroidx/compose/animation/core/TweenSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# instance fields
.field private final delay:I

.field private final durationMillis:I

.field private final easing:Landroidx/compose/animation/core/Easing;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 1

    const-string v0, "easing"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    iput p2, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    iput-object p3, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x12c

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 94
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p3

    .line 91
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 101
    instance-of v0, p1, Landroidx/compose/animation/core/TweenSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Landroidx/compose/animation/core/TweenSpec;

    iget v0, p1, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    iget v2, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    if-ne v0, v2, :cond_0

    .line 103
    iget v0, p1, Landroidx/compose/animation/core/TweenSpec;->delay:I

    iget v2, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    if-ne v0, v2, :cond_0

    .line 104
    iget-object p1, p1, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    iget-object v0, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/TweenSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedTweenSpec;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/TweenSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedTweenSpec;

    move-result-object p1

    return-object p1
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedTweenSpec;
    .locals 3

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance p1, Landroidx/compose/animation/core/VectorizedTweenSpec;

    iget v0, p0, Landroidx/compose/animation/core/TweenSpec;->durationMillis:I

    iget v1, p0, Landroidx/compose/animation/core/TweenSpec;->delay:I

    iget-object v2, p0, Landroidx/compose/animation/core/TweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    invoke-direct {p1, v0, v1, v2}, Landroidx/compose/animation/core/VectorizedTweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    return-object p1
.end method
