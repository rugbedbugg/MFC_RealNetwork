.class public abstract Landroidx/compose/material/ElevationKt;
.super Ljava/lang/Object;
.source "Elevation.kt"


# static fields
.field private static final DefaultIncomingSpec:Landroidx/compose/animation/core/TweenSpec;

.field private static final DefaultOutgoingSpec:Landroidx/compose/animation/core/TweenSpec;

.field private static final HoveredOutgoingSpec:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 107
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    const/16 v1, 0x78

    const/4 v2, 0x0

    .line 109
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    .line 107
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Landroidx/compose/material/ElevationKt;->DefaultIncomingSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 112
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v8, 0x96

    const/4 v9, 0x0

    .line 114
    new-instance v10, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v0

    .line 112
    invoke-direct/range {v7 .. v12}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/ElevationKt;->DefaultOutgoingSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 117
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v14, 0x78

    const/4 v15, 0x0

    .line 119
    new-instance v5, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v5, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v13, v0

    move-object/from16 v16, v5

    .line 117
    invoke-direct/range {v13 .. v18}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/ElevationKt;->HoveredOutgoingSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final synthetic access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ElevationKt;->DefaultIncomingSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final synthetic access$getDefaultOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ElevationKt;->DefaultOutgoingSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final synthetic access$getHoveredOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ElevationKt;->HoveredOutgoingSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    if-eqz p3, :cond_0

    .line 52
    sget-object p2, Landroidx/compose/material/ElevationDefaults;->INSTANCE:Landroidx/compose/material/ElevationDefaults;

    invoke-virtual {p2, p3}, Landroidx/compose/material/ElevationDefaults;->incomingAnimationSpecForInteraction(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 54
    sget-object p3, Landroidx/compose/material/ElevationDefaults;->INSTANCE:Landroidx/compose/material/ElevationDefaults;

    invoke-virtual {p3, p2}, Landroidx/compose/material/ElevationDefaults;->outgoingAnimationSpecForInteraction(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    .line 59
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
