.class public final Landroidx/compose/ui/layout/MeasureScope$layout$1;
.super Ljava/lang/Object;
.source "MeasureScope.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/MeasureScope$-CC;->$default$layout(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $placementBlock:Lkotlin/jvm/functions/Function1;

.field final synthetic $width:I

.field private final alignmentLines:Ljava/util/Map;

.field private final height:I

.field final synthetic this$0:Landroidx/compose/ui/layout/MeasureScope;

.field private final width:I


# direct methods
.method constructor <init>(IILjava/util/Map;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$width:I

    iput-object p4, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p5, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->width:I

    iput p2, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->height:I

    iput-object p3, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->alignmentLines:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAlignmentLines()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->alignmentLines:Ljava/util/Map;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->width:I

    return v0
.end method

.method public placeChildren()V
    .locals 9

    .line 52
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    iget v1, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$width:I

    iget-object v2, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    .line 54
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->this$0:Landroidx/compose/ui/layout/MeasureScope;

    .line 55
    instance-of v4, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/compose/ui/layout/MeasureScope$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    .line 365
    invoke-static {}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$get_coordinates$cp()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    .line 366
    invoke-static {v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)I

    move-result v6

    .line 367
    invoke-static {v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    .line 368
    invoke-static {}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getLayoutDelegate$cp()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v8

    .line 369
    invoke-static {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 370
    invoke-static {v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 372
    invoke-static {v0, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$configureForPlacingForAlignment(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)Z

    move-result v1

    .line 373
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 374
    :cond_1
    invoke-virtual {v3, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->setPlacingForAlignment$ui_release(Z)V

    .line 375
    :goto_1
    invoke-static {v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 376
    invoke-static {v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 377
    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$set_coordinates$cp(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 378
    invoke-static {v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setLayoutDelegate$cp(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V

    return-void
.end method
