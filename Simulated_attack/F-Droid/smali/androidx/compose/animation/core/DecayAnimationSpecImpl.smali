.class final Landroidx/compose/animation/core/DecayAnimationSpecImpl;
.super Ljava/lang/Object;
.source "DecayAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/DecayAnimationSpec;


# instance fields
.field private final floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V
    .locals 1

    const-string v0, "floatDecaySpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    return-void
.end method


# virtual methods
.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;
    .locals 1

    const-string v0, "typeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance p1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    invoke-direct {p1, v0}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    return-object p1
.end method
