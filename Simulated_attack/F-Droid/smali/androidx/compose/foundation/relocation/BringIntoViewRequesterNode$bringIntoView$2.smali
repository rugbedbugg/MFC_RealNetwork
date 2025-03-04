.class final Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BringIntoViewRequester.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $rect:Landroidx/compose/ui/geometry/Rect;

.field final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/geometry/Rect;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    .line 184
    invoke-virtual {v0}, Landroidx/compose/foundation/relocation/BringIntoViewChildNode;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;->invoke()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method
