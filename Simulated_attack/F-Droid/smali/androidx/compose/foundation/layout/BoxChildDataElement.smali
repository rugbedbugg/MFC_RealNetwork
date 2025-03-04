.class final Landroidx/compose/foundation/layout/BoxChildDataElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Box.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u000b\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0013\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0017\u0010\u000e\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0012\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/BoxChildDataElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/BoxChildDataNode;",
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
        "Landroidx/compose/ui/Alignment;",
        "alignment",
        "Landroidx/compose/ui/Alignment;",
        "getAlignment",
        "()Landroidx/compose/ui/Alignment;",
        "matchParentSize",
        "Z",
        "getMatchParentSize",
        "()Z",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "inspectorInfo",
        "Lkotlin/jvm/functions/Function1;",
        "getInspectorInfo",
        "()Lkotlin/jvm/functions/Function1;",
        "<init>",
        "(Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)V",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;

.field private final inspectorInfo:Lkotlin/jvm/functions/Function1;

.field private final matchParentSize:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->alignment:Landroidx/compose/ui/Alignment;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->matchParentSize:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->inspectorInfo:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/BoxChildDataNode;
    .locals 3

    .line 269
    new-instance v0, Landroidx/compose/foundation/layout/BoxChildDataNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->alignment:Landroidx/compose/ui/Alignment;

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->matchParentSize:Z

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/BoxChildDataNode;-><init>(Landroidx/compose/ui/Alignment;Z)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/BoxChildDataElement;->create()Landroidx/compose/foundation/layout/BoxChildDataNode;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 289
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/BoxChildDataElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/BoxChildDataElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 290
    iget-object v3, p1, Landroidx/compose/foundation/layout/BoxChildDataElement;->alignment:Landroidx/compose/ui/Alignment;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->matchParentSize:Z

    .line 291
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxChildDataElement;->matchParentSize:Z

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->matchParentSize:Z

    .line 283
    invoke-static {v1}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public update(Landroidx/compose/foundation/layout/BoxChildDataNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 273
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/BoxChildDataNode;->setAlignment(Landroidx/compose/ui/Alignment;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/BoxChildDataElement;->matchParentSize:Z

    .line 274
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/BoxChildDataNode;->setMatchParentSize(Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 262
    check-cast p1, Landroidx/compose/foundation/layout/BoxChildDataNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/BoxChildDataElement;->update(Landroidx/compose/foundation/layout/BoxChildDataNode;)V

    return-void
.end method
