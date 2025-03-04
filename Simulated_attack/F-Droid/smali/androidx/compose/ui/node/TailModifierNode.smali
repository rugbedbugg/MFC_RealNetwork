.class public final Landroidx/compose/ui/node/TailModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "InnerNodeCoordinator.kt"


# instance fields
.field private attachHasBeenRun:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Landroidx/compose/ui/Modifier$Node;->setAggregateChildKindSet$ui_release(I)V

    return-void
.end method


# virtual methods
.method public final getAttachHasBeenRun()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "<tail>"

    return-object v0
.end method
