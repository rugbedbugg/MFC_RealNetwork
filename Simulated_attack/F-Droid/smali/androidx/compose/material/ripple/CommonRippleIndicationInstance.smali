.class public final Landroidx/compose/material/ripple/CommonRippleIndicationInstance;
.super Landroidx/compose/material/ripple/RippleIndicationInstance;
.source "CommonRipple.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field private final bounded:Z

.field private final color:Landroidx/compose/runtime/State;

.field private final radius:F

.field private final rippleAlpha:Landroidx/compose/runtime/State;

.field private final ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;


# direct methods
.method private constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rippleAlpha"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, p4}, Landroidx/compose/material/ripple/RippleIndicationInstance;-><init>(ZLandroidx/compose/runtime/State;)V

    iput-boolean p1, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->bounded:Z

    iput p2, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->radius:F

    iput-object p3, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 66
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    return-void
.end method

.method public static final synthetic access$getRipples$p(Landroidx/compose/material/ripple/CommonRippleIndicationInstance;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-object p0
.end method

.method private final drawRipples-4WTKRHQ(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/ripple/RippleAnimation;

    iget-object v2, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 101
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material/ripple/RippleAlpha;

    invoke-virtual {v2}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    move-result v5

    const/4 v2, 0x0

    cmpg-float v2, v5, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    move-wide v3, p2

    .line 103
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroidx/compose/material/ripple/RippleAnimation;->draw-4WTKRHQ(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9

    const-string v0, "interaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/ripple/RippleAnimation;

    invoke-virtual {v1}, Landroidx/compose/material/ripple/RippleAnimation;->finish()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->bounded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->getPressPosition-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 79
    :goto_1
    new-instance v2, Landroidx/compose/material/ripple/RippleAnimation;

    iget v3, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->radius:F

    iget-boolean v4, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->bounded:Z

    invoke-direct {v2, v0, v3, v4, v1}, Landroidx/compose/material/ripple/RippleAnimation;-><init>(Landroidx/compose/ui/geometry/Offset;FZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 84
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 85
    new-instance v6, Landroidx/compose/material/ripple/CommonRippleIndicationInstance$addRipple$2;

    invoke-direct {v6, v2, p0, p1, v1}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance$addRipple$2;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Landroidx/compose/material/ripple/CommonRippleIndicationInstance;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    .line 69
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 70
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    iget v2, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->radius:F

    .line 71
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/compose/material/ripple/RippleIndicationInstance;->drawStateLayer-H2RKhps(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJ)V

    .line 72
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->drawRipples-4WTKRHQ(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V

    return-void
.end method

.method public onAbandoned()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 116
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->clear()V

    return-void
.end method

.method public onForgotten()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 112
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->clear()V

    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 1

    const-string v0, "interaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 95
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/ripple/RippleAnimation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAnimation;->finish()V

    :cond_0
    return-void
.end method
