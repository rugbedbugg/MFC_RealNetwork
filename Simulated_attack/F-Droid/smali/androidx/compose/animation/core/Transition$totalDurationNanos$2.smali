.class final Landroidx/compose/animation/core/Transition$totalDurationNanos$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/core/Transition;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 5

    iget-object v0, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    .line 273
    invoke-static {v0}, Landroidx/compose/animation/core/Transition;->access$get_animations$p(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 274
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getDurationNanos$animation_core_release()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    .line 276
    invoke-static {v0}, Landroidx/compose/animation/core/Transition;->access$get_transitions$p(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/Transition;

    .line 279
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getTotalDurationNanos()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    .line 282
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 271
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
