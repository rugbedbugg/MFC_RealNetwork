.class final Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Composer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->deactivateToEndGroup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $group:I

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->$group:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2785
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->invoke(ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/Object;)V
    .locals 5

    .line 2787
    instance-of v0, p2, Landroidx/compose/runtime/RememberObserver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 2788
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getReader$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iget v4, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->$group:I

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 2789
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3$1;

    invoke-direct {v4, p2, p1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v3, v4, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    goto :goto_0

    .line 2797
    :cond_0
    instance-of v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_1

    .line 2798
    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 2799
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getReader$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iget v4, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->$group:I

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 2800
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3$2;

    invoke-direct {v4, p2, p1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3$2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v3, v4, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
