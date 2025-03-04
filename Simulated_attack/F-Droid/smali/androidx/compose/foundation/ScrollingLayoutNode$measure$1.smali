.class final Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ScrollingLayoutNode;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $side:I

.field final synthetic this$0:Landroidx/compose/foundation/ScrollingLayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/ScrollingLayoutNode;ILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    iput p2, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$side:I

    iput-object p3, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 401
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 11

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    .line 402
    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollingLayoutNode;->getScrollerState()Landroidx/compose/foundation/ScrollState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$side:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    .line 403
    invoke-virtual {v1}, Landroidx/compose/foundation/ScrollingLayoutNode;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$side:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    .line 404
    invoke-virtual {v1}, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    .line 405
    invoke-virtual {v1}, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    iget-object v4, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v3, p1

    .line 406
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
