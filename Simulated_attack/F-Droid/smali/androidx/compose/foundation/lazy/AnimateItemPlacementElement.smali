.class final Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "LazyItemScopeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0018\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0013\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006\u00f8\u0001\u0000\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;",
        "create",
        "node",
        "",
        "update",
        "",
        "other",
        "",
        "equals",
        "",
        "hashCode",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "Landroidx/compose/ui/unit/IntOffset;",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "getAnimationSpec",
        "()Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "<init>",
        "(Landroidx/compose/animation/core/FiniteAnimationSpec;)V",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 1

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;
    .locals 2

    .line 161
    new-instance v0, Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->create()Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 169
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 170
    check-cast p1, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public update(Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;->getDelegatingNode()Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setPlacementAnimationSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 157
    check-cast p1, Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/AnimateItemPlacementElement;->update(Landroidx/compose/foundation/lazy/AnimateItemPlacementNode;)V

    return-void
.end method
