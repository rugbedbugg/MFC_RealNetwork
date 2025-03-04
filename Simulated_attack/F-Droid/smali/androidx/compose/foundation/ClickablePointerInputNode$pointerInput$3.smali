.class final Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickablePointerInputNode;->pointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/ClickablePointerInputNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/ClickablePointerInputNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$3;->this$0:Landroidx/compose/foundation/ClickablePointerInputNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 889
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$3;->invoke-k-4lQ0M(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke-k-4lQ0M(J)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$3;->this$0:Landroidx/compose/foundation/ClickablePointerInputNode;

    .line 895
    invoke-virtual {p1}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$3;->this$0:Landroidx/compose/foundation/ClickablePointerInputNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->getOnClick()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
