.class final Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "LazyItemScopeImpl.kt"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# instance fields
.field private final delegatingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 1

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 187
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;->delegatingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    return-void
.end method


# virtual methods
.method public final getDelegatingNode()Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;->delegatingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    return-object v0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;->delegatingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    return-object p1
.end method
