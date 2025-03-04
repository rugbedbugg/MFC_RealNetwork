.class final Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PointerIcon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerIconService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;->$pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerIcon;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;->invoke(Landroidx/compose/ui/input/pointer/PointerIcon;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;->$pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;

    .line 96
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/pointer/PointerIconService;->setIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V

    return-void
.end method
