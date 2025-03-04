.class public abstract Landroidx/compose/runtime/CompositionContext;
.super Ljava/lang/Object;
.source "CompositionContext.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V
.end method

.method public doneComposing$runtime_release()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract getCollectingParameterInformation$runtime_release()Z
.end method

.method public getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    .line 60
    invoke-static {}, Landroidx/compose/runtime/CompositionContextKt;->access$getEmptyPersistentCompositionLocalMap$p()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCompoundHashKey$runtime_release()I
.end method

.method public abstract getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
.end method

.method public abstract invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
.end method

.method public abstract movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
.end method

.method public abstract recordInspectionTable$runtime_release(Ljava/util/Set;)V
.end method

.method public registerComposer$runtime_release(Landroidx/compose/runtime/Composer;)V
    .locals 1

    .line 0
    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
.end method

.method public startComposing$runtime_release()V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterComposer$runtime_release(Landroidx/compose/runtime/Composer;)V
    .locals 1

    .line 0
    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
.end method
