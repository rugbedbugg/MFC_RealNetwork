.class public interface abstract Landroidx/compose/runtime/ControlledComposition;
.super Ljava/lang/Object;
.source "Composition.kt"

# interfaces
.implements Landroidx/compose/runtime/Composition;


# virtual methods
.method public abstract applyChanges()V
.end method

.method public abstract applyLateChanges()V
.end method

.method public abstract changesApplied()V
.end method

.method public abstract composeContent(Lkotlin/jvm/functions/Function2;)V
.end method

.method public abstract delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
.end method

.method public abstract disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V
.end method

.method public abstract insertMovableContent(Ljava/util/List;)V
.end method

.method public abstract invalidateAll()V
.end method

.method public abstract isComposing()Z
.end method

.method public abstract observesAnyOf(Ljava/util/Set;)Z
.end method

.method public abstract prepareCompose(Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract recompose()Z
.end method

.method public abstract recordModificationsOf(Ljava/util/Set;)V
.end method

.method public abstract recordReadOf(Ljava/lang/Object;)V
.end method

.method public abstract recordWriteOf(Ljava/lang/Object;)V
.end method
