.class final Landroidx/compose/foundation/FocusedBoundsObserverElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "FocusedBounds.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0014\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u00050\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0013\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002R%\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u00050\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/FocusedBoundsObserverElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/FocusedBoundsObserverNode;",
        "create",
        "node",
        "",
        "update",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "onPositioned",
        "Lkotlin/jvm/functions/Function1;",
        "getOnPositioned",
        "()Lkotlin/jvm/functions/Function1;",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
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
.field private final onPositioned:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "onPositioned"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/FocusedBoundsObserverNode;
    .locals 2

    .line 51
    new-instance v0, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    iget-object v1, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/FocusedBoundsObserverNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusedBoundsObserverElement;->create()Landroidx/compose/foundation/FocusedBoundsObserverNode;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    .line 62
    iget-object p1, p1, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public update(Landroidx/compose/foundation/FocusedBoundsObserverNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/FocusedBoundsObserverElement;->onPositioned:Lkotlin/jvm/functions/Function1;

    .line 54
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->setOnPositioned(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 48
    check-cast p1, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusedBoundsObserverElement;->update(Landroidx/compose/foundation/FocusedBoundsObserverNode;)V

    return-void
.end method
