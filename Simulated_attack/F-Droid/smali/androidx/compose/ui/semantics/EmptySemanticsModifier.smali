.class public final Landroidx/compose/ui/semantics/EmptySemanticsModifier;
.super Landroidx/compose/ui/Modifier$Node;
.source "SemanticsModifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic getShouldClearDescendantSemantics()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNode$-CC;->$default$getShouldClearDescendantSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)Z

    move-result v0

    return v0
.end method

.method public synthetic getShouldMergeDescendantSemantics()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNode$-CC;->$default$getShouldMergeDescendantSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)Z

    move-result v0

    return v0
.end method
