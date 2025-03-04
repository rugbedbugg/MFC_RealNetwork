.class final Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SuspendAnimation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/SuspendAnimationKt;->animate(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_animate:Landroidx/compose/animation/core/AnimationState;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/AnimationState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 264
    invoke-virtual {p0}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/AnimationState;->setRunning$animation_core_release(Z)V

    return-void
.end method
