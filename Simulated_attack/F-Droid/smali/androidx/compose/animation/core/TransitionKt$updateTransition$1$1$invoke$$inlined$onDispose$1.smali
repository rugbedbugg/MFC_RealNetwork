.class public final Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $transition$inlined:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1$invoke$$inlined$onDispose$1;->$transition$inlined:Landroidx/compose/animation/core/Transition;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1$invoke$$inlined$onDispose$1;->$transition$inlined:Landroidx/compose/animation/core/Transition;

    .line 497
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->onTransitionEnd$animation_core_release()V

    return-void
.end method
