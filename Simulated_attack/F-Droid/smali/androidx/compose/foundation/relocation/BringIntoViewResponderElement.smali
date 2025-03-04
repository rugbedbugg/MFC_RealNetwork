.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "BringIntoViewResponder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0013\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;",
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
        "Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "responder",
        "Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "<init>",
        "(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V",
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
.field private final responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V
    .locals 1

    const-string v0, "responder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;
    .locals 2

    .line 108
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->create()Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 115
    instance-of v0, p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;

    iget-object p1, p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public update(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 111
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->setResponder(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 104
    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderElement;->update(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;)V

    return-void
.end method
