.class final Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnchoredDraggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$this$anchoredDrag:Landroidx/compose/material/AnchoredDragScope;

.field final synthetic $prev:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Landroidx/compose/material/AnchoredDragScope;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;->$$this$anchoredDrag:Landroidx/compose/material/AnchoredDragScope;

    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;->$prev:Lkotlin/jvm/internal/Ref$FloatRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 586
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;->invoke(FF)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;->$$this$anchoredDrag:Landroidx/compose/material/AnchoredDragScope;

    .line 591
    invoke-interface {v0, p1, p2}, Landroidx/compose/material/AnchoredDragScope;->dragTo(FF)V

    iget-object p2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2$1;->$prev:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 592
    iput p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    return-void
.end method
