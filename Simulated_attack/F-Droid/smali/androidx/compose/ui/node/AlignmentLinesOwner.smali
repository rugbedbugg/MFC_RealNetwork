.class public interface abstract Landroidx/compose/ui/node/AlignmentLinesOwner;
.super Ljava/lang/Object;
.source "LayoutNodeLayoutDelegate.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;


# virtual methods
.method public abstract calculateAlignmentLines()Ljava/util/Map;
.end method

.method public abstract forEachChildAlignmentLinesOwner(Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;
.end method

.method public abstract getInnerCoordinator()Landroidx/compose/ui/node/NodeCoordinator;
.end method

.method public abstract getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
.end method

.method public abstract isPlaced()Z
.end method

.method public abstract layoutChildren()V
.end method

.method public abstract requestLayout()V
.end method

.method public abstract requestMeasure()V
.end method
